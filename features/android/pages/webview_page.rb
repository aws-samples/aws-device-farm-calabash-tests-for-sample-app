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
# A page for a web view
class WebViewPage < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Web View')
  end

  # Presses enter to go confirm the url
  def goto_url
    press_enter_button
  end

  # Waits and checks the webview status by checking the webview's content description
  # The webview's content description is pragmatically set to the domain
  def check_webview_status(domain)
    wait_for(:timeout => 60) do
      element_exists("webview contentDescription:'#{domain}'") ||
          element_exists("webview contentDescription:'webview failure'")
    end
    num =  query("webview contentDescription:'#{domain}'").count

    if num == 0
      raise("Webview isn't loading or there is no wifi")
    end
  end

  # Enters the URL into the url bar
  def input_url(url)
    enter_text("* id:'website_input'",url)
  end

  # Checks to see if the error toast appears when a invalid url is inputted
  def check_for_error_message
    wait_for_element_exists("* {text CONTAINS[c] 'Please put in a valid url'}")
  end
end