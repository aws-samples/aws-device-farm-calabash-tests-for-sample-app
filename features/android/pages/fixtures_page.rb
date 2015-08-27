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
class FixturesPage < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Fixtures')
  end

  # Checks the wifi state
  def check_wifi (state)
    check_if_id_contains_text('wifi',state)
  end

  # Checks the bluetooth state
  def check_bluetooth (state)
    check_if_id_contains_text('bluetooth',state)
  end

  # Checks the gps state
  def check_gps (state)
    check_if_id_contains_text('gps',state)
  end

  # Checks the nfc state. Fails on devices with no nfc support
  def check_nfc (state)
    check_if_id_contains_text('nfc',state)
  end
end