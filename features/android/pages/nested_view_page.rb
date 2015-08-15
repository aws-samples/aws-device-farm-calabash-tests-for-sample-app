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

class NestedViewPage < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Nested Views')
  end

  # Navigates up
  def navigate_up
    touch("* contentDescription:'Navigate up'")
  end

  # Presses the back button for a specific amount of times
  def press_back_button_times(number_times)
    number_times.to_i.times do
      press_back_button
    end

  end

  # Presses the next level back button a a specific amount of times
  def press_next_level_button(number_times)
    number_times.to_i.times do
      tap_when_element_exists("* id:'back_navigation_next_button'")
    end
  end

end