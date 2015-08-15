#
# Copyright 2014-2015 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
#
# http://aws.amazon.com/apache2.0
#
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.
#
include Calabash::Android::Gestures

class InputControls < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Input Controls')
  end

  # enters text inside the textbox
  def enter_text_field_control(text)
    enter_text("* id:'input_edit_text'", text)
  end

  # Checks if text inside the text box matches expected text
  def verify_text_field_control(text)
    entered_text = query("* id:'input_edit_text'", :text).first
    return if (text == entered_text)
    fail('the text entered is incorrect')
  end

  # Checks or unchecks checkbox
  def check_checkbox
    touch("* id:'input_checkbox'")
  end

  # Selects the radio button at a specific name
  def select_radio_button(radio_button_name)
    touch("* text:'#{radio_button_name}'")
  end

  # Switches the switch
  def switch_switch
    touch("* id:'input_switch'")
  end

  #checks the content description of the toggle display in order to check if activated
  def check_switch_frame(switch_status)
    wait_for_element_exists("* contentDescription:'#{switch_status}'")
  end

  # Selects the spinner at a specific index
  def select_spinner_at_index(index)
    query("* id:'input_spinner'", { method_name: 'setSelection', arguments: [index.to_i] })
  end

  #Checks if a specific spinner's index is displayed
  def check_if_index_is_displayed(index)
    selected_text = query("* id:'input_spinner'",
                          { method_name: 'getSelectedView', arguments: [index.to_i] })
                        .first['text']
    check_if_id_contains_text('input_spinner_message',"Selected: #{selected_text}")
  end

  # Activates the pull to refresh control
  def pull_down_page
    pan("* id:'input_refresh'", :down)
  end

  # Verifies if the time is displayed
  def verify_time
    sleep 10
    time_text = query("* id:'input_refresh_display'", :text).first
    unless time_text=~/\d{2}:\d{2}:\d{2} (AM|PM)/
      fail('did not refresh')
    end
  end

  # Sets the time of the time picker to a specific time
  def choose_time(hour, minute)
    set_time("* id:'input_timepicker'", hour.to_i, minute.to_i)
  end

  # Sets the date of the date picker to a specific date
  def choose_date(month, day, year)
    set_date("* id:'input_datepicker'", year.to_i, month.to_i, day.to_i)
  end

  # Presses the submit button
  def press_submit_button
    touch("* id:'input_submit_button'")
  end

  # Checks if the submit button's action appears (a toast containing 'Submitted')
  def check_submit_action
    wait_for_element_exists("* {text CONTAINS[c] 'Submitted'}")
  end

  # Performs a fling gesture
  def do_fling_gesture
    fling = Gesture.generate_swipe({x:50, y:10}, {x:50, y:90}, {flick:true})
    set_gesture_action_page(fling)
    execute_gesture(fling)
  end

  # Performs a long touch gesture
  def do_long_touch_gesture
    long_press = Gesture.tap(time:2)
    set_gesture_action_page(long_press)
    execute_gesture(long_press)
  end

  # Performs a single tap gesture
  def single_tap_gesture
    single_press = Gesture.tap(time:0.3)
    set_gesture_action_page(single_press)
    execute_gesture(single_press)
  end

  # Checks if the last action's message matches the expected gesture message
  def check_if_action_displayed(gesture_message)
    sleep 5
    unless gesture_message.eql?query("* id:'input_gesture_content'", :text).first.split("\n").last
      fail('the gesture didn\'t match')
    end
  end

  # Bounds the action's location to a the gesture pad
  def set_gesture_action_page(gesture_action)
    gesture_action.gestures.first.touches.first.query_string = "* id:'input_gesture_action_pad'"
  end
end