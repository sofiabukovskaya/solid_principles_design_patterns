import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/camera.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/email_device.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/phone.dart';
import 'package:solid_principles_design_patterns/solid/interface_segregation_principle/web_browser.dart';

class SmartPhone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void browseInternet() {
      print('Browsing Internet');
  }

  @override
  void makeCall() {
    print('Make a call');
  }

  @override
  void sendMail() {
    print('Send email');
  }

  @override
  void takePicture() {
    print('Take a picture');
  }
}