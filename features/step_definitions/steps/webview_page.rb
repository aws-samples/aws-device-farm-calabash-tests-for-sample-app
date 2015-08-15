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
And(/^I am on the WebView Page$/) do
  @current_page = page(WebViewPage).await(timeout: 30)
end

And(/^I enter the url$/) do
  @current_page.goto_url
end

Then(/^I should get a loaded webpage with "([^"]*)" as the content description$/) do |arg|
  @current_page.check_webview_status(arg)
end

When(/^I input "([^"]*)" into the navigation bar$/) do |arg|
  @current_page.input_url(arg)
end

Then(/^I should see a error message$/) do
  @current_page.check_for_error_message
end