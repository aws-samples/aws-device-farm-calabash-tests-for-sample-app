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
And(/^I am on the Input Controls page$/) do
  @current_page = page(InputControls)
end

When(/^I enter text "([^"]*)" into the input text field$/) do |arg|
  @current_page.enter_text_field_control(arg)
end

Then(/^I should see the text "([^"]*)" in the input text field$/) do |arg|
  @current_page.verify_text_field_control(arg)
end

When(/^I check the checkbox$/) do
  @current_page.check_checkbox
end

When(/^I select the "([^"]*)" radio button$/) do |arg|
  @current_page.select_radio_button(arg)
end

When(/^I switch the switch control$/) do
  @current_page.switch_switch
end

Then(/^I should see frame in the "(ON|OFF)" state$/) do |arg|
  @current_page.check_switch_frame(arg)
end

When(/^I select the item in the spinner at index (\d+)$/) do |arg|
  @current_page.select_spinner_at_index(arg)
end

And(/^I should see the display with index (\d+)$/) do |arg|
  @current_page.check_if_index_is_displayed(arg)
end

When(/^I pull down on the screen$/) do
  @current_page.pull_down_page
end

Then(/^I should see the current time$/) do
  @current_page.verify_time
end

When(/^I choose the time of the (\d+) hour and the (\d+) minute$/) do |hour, minute|
  @current_page.choose_time(hour, minute)
end

When(/^I choose the date (\d+) month, the (\d+) day, (\d+) year$/) do |month, day, year|
  @current_page.choose_date(month,day,year)
end

When(/^I press the submit button$/) do
  @current_page.press_submit_button
end

Then(/^I should see the submitted action$/) do
  @current_page.check_submit_action
end

When(/^I do a "([^"]*)" gesture$/) do |arg|
  @current_page.do_gesture(arg)
end

Then(/^I should see "([^"]*)" at the bottom of the display$/) do |arg|
  @current_page.check_if_action_displayed(arg)
end

When(/^I do a fling gesture$/) do
  @current_page.do_fling_gesture
end

When(/^I do a long touch gesture$/) do
  @current_page.do_long_touch_gesture
end

When(/^I do a Single Tap gesture$/) do
  @current_page.single_tap_gesture
end