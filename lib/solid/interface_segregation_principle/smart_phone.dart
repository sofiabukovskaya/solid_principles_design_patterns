import 'package:flutter/foundation.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/camera.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/email_device.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/phone.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/web_browser.dart';

class SmartPhone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void browseInternet() {
    debugPrint('Browsing Internet');
  }

  @override
  void makeCall() {
    debugPrint('Make a call');
  }

  @override
  void sendMail() {
    debugPrint('Send email');
  }

  @override
  void takePicture() {
    debugPrint('Take a picture');
  }
}
