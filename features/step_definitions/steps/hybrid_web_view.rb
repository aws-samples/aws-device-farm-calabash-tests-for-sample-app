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
And(/^I am on the Local Web View Page$/) do
  @current_page = page(NativeWebView)
end

When(/^I replace the first name with "([^"]*)"$/) do |arg|
  @current_page.set_first_name(arg)
end

And(/^I replace the last name with "([^"]*)"$/) do |arg|
  @current_page.set_last_name(arg)
end

Then(/^the name should be "([^"]*)"$/) do |arg|
  @current_page.verify_name(arg)
end