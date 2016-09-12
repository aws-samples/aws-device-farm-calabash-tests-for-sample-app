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
And(/^I am on the Alerts Page$/) do
  @current_page = page(AlertPage)
  # Sleep to give page time to fully render
  sleep(1)
end

Then(/^I should see the toast$/) do
  @current_page.check_for_toast
end

Then(/^I should see the alert Message$/) do
  @current_page.check_for_alert_message
end

Then(/^I should not see the alert Message$/) do
  @current_page.check_for_dismissed_alert
end