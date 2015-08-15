# Calabash Sample Tests for Device Farm Sample App
This is a collection of example Calabash test suites written for the Device Farm [Android](https://github.com/awslabs/aws-device-farm-sample-app-for-android) sample app. Please use these tests as a reference for your own Device Farm Calabash tests.

# Android

## Getting Started
1. First read the [Official Calabash Documentation](https://github.com/calabash/calabash-android) to .

	**We currently support calabash version 0.5.8. Be sure to have this installed when you test locally. Later versions 	of Calabash might cause unexpected results when running Calabash tests on AWS Device Farm.**

2. Run the command to install the proper version of the calabash-android gem:
	```
	gem install calabash-android –v 0.5.8
	```
3. Verify if you have calabash-android installed with this command
   ```
   calabash-android version
   ```
   You should see "0.5.8" as the result

### Running Your Tests Locally

**Follow [the official Calabash guide](https://github.com/calabash/calabash-android#running-test) in order to learn how to run your tests locally**

### Running Your Tests on Device Farm
**Read the [Device Farm documentation](http://docs.aws.amazon.com/devicefarm/latest/developerguide/test-types-android-calabash.html)**

## Strategies For Android 

### Strategies for Testing Specific Scenarios

|Component |Android Implementation| Tests |
|----------|----------------------|-------|
|Alerts: [Toasts](http://developer.android.com/guide/topics/ui/notifiers/toasts.html) and [Dialogs](http://developer.android.com/guide/topics/ui/dialogs.html)   | [source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/NotificationsFragment.java)              |[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/alert_page.rb)
|Fixtures|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/FixturesFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/fixtures_page.rb)
|Static Page: [TextView](http://developer.android.com/reference/android/widget/TextView.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/res/layout/fragment_homepage.xml)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/homepage.rb)
|Login Page|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/LoginFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/login_page.rb)
|Nested Views: [Back and Up Navigation](http://developer.android.com/design/patterns/navigation.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/NestedFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/nested_views_page.rb)
|[Web Views](http://developer.android.com/reference/android/webkit/WebView.html)|<ul><li><a href ="https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/LocalWebView.java">Hybrid Web Views</a></li><li><a href="https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/WebViewFragment.java">Web View</a></li></ul>|<ul><li><a href ="https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/hybrid_web_view.rb">Hybrid Web Views</a></li><li><a href="https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/webview_page.rb">Web View</a></li></ul>
| An Expected Crash|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/crashFragment.java)|[source code]()|


### Strategies for Native Features

|Feature |Android Implementation| Tests |
|--------|----------------------|-------|
|[Camera](http://developer.android.com/guide/topics/media/camera.html)  |[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Native/Native_CameraFragment.java) |[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/native_components.rb)
|[Image Collection Grid](http://developer.android.com/guide/topics/ui/layout/gridview.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Native/Native_ImageGalleryFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/native_components.rb)
|[Scroll View](http://developer.android.com/reference/android/widget/ScrollView.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/res/layout/native_content_scrolling.xml)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/native_components.rb)
|Out of View Content|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/res/layout/native_out_of_view_scrolling.xml)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/native_components.rb)
|[Video](http://developer.android.com/reference/android/media/MediaPlayer.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Native/Native_MediaPlayer.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/native_components.rb)

### Strategies for Testing Inputs

|Component |Android Implementation| Tests|
|--------------|---------|----------|
|[Checkbox](http://developer.android.com/reference/android/widget/CheckBox.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_CheckBoxFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[DatePicker](http://developer.android.com/reference/android/widget/DatePicker.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_DatePickerFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[EditText](http://developer.android.com/reference/android/widget/EditText.html)|[source code]()|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Gestures Input](http://developer.android.com/training/gestures/index.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_GestureFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Pull to Refresh](https://developer.android.com/reference/android/support/v4/widget/SwipeRefreshLayout.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_RefreshButtonFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Radio Buttons](http://developer.android.com/guide/topics/ui/controls/radiobutton.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_RadioButtonFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[TimePicker](http://developer.android.com/reference/android/widget/TimePicker.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_TimePickerFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Toggle Button](http://developer.android.com/guide/topics/ui/controls/togglebutton.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_Toggle_ButtonFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Spinner Input](http://developer.android.com/guide/topics/ui/controls/spinner.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_SpinnerFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|
|[Buttons](http://developer.android.com/reference/android/widget/Button.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/Tabs/Inputs/Input_SubmitButtonFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/step_definitions/steps/input_controls.rb)|

### Strategies for Automated Navigation
|Component |Android Implementation| Test
|--------------|---------|----------|
|[Navigation Drawer](https://developer.android.com/training/implementing-navigation/nav-drawer.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/NavigationDrawerFragment.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/android/Base/navigator.rb)|
|[ViewPager](http://developer.android.com/reference/android/support/v4/view/ViewPager.html)|[source code](https://github.com/awslabs/aws-device-farm-sample-app-for-android/blob/master/app/src/main/java/com/amazonaws/devicefarm/android/referenceapp/Fragments/TabFragmentContainer.java)|[source code](https://github.com/awslabs/aws-device-farm-calabash-tests-for-sample-app/blob/master/features/android/Base/navigator.rb)|
