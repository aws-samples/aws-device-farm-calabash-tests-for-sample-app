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
And(/^I am on the Fixtures Page$/) do
  @current_page = page(FixturesPage)
end

Then(/^I check if wifi is "(true|false)"$/) do |arg|
  @current_page.check_wifi(arg)
end

Then(/^I check if the bluetooth is "(true|false)"$/) do |arg|
  @current_page.check_bluetooth(arg)
end

Then(/^I check if the GPS is "(true|false)"$/) do |arg|
  @current_page.check_gps(arg)
end

Then(/^I check if the NFC is "(true|false)"$/) do |arg|
  @current_page.check_nfc(arg)
end