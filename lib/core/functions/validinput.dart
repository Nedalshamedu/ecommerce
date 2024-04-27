import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Name";
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone No";
    }
  }

  if (val.isEmpty) {
    return "can not be Empty";
  }
  if (val.length < min) {
    return "can not be less than min";
  }
  if (val.length > max) {
    return "can not be larger than max";
  }
}
