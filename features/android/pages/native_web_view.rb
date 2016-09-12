#
# Copyright 2014-2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

class NativeWebView < ADFBasePage
  # Ensures that the page is present by checking if its title is displayed
  def trait
    get_toolbar_title('Local Web View')
  end

  # inputs the first name
  def set_first_name(fname)
    # Sleep to give page time to fully render
    sleep(1)
    replace_web_input('first-name-form',fname)
  end

  # Inputs the last name
  def set_last_name(lname)
    # Sleep to give page time to fully render
    sleep(1)
    replace_web_input('last-name-form', lname)
  end

  # Verifies the calculated name with the given name
  def verify_name(name)
    # Sleep to give page time to fully render
    sleep(1)
    calculated_name = query("webview css:'#full_name'", :textContent).first
    unless name == calculated_name
      fail('Name is not equal')
    end
  end

  # Replaces a the text in a text input with a specific id
  def replace_web_input(id, text)
    clear_text_in("webview css:'##{id}'")
    enter_text("webview css:'##{id}'", text)
  end
end