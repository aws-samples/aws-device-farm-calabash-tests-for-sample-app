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
class LoginPage < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Login Page')
  end

  # Checks to see if the user name and password fields exist within the view
  def check_if_login_fields_exists
    check_if_id_exists(user_name_field_id)
    check_if_id_exists(password_field_id)
  end

  # checks if the login button exists within the view
  def check_if_login_button_exists
    check_if_id_exists(login_button_id)
  end

  # Enters the credentials within the login form
  def enter_creds(username,password)
    enter_text("* id:'#{user_name_field_id}'", username)
    enter_text("* id:'#{password_field_id}'", password)
  end

  # Checks to see if the logged in or login error text matches expected value
  def verify_alt_message (message)
    check_if_id_contains_text(
        alt_message_id,
        message)
  end

  # Checks to see if the logged in or login error button text matches expected value
  def verify_alt_button_text (text)
    check_if_id_contains_text(
        alt_button_id,
        text)
  end

  # The user name input id
  def user_name_field_id
    'username_text_input'
  end

  # The password input field id
  def password_field_id
    'password_text_input'
  end

  # The login button id
  def login_button_id
    'login_button'
  end

  # The second screen's message id
  def alt_message_id
    'login_alt_message_textView'
  end

  # The second screen logout/try again button id
  def alt_button_id
    'alt_button'
  end

end