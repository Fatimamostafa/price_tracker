class UtilInputForm {
  static String getErrorText(InputType? type) {
    switch (type) {
      case InputType.firstName:
        {
          return "";
        }

      case InputType.lastName:
        {
          return "";
        }

      case InputType.email:
        {
          return "";
        }

      case InputType.password:
        {
          return "Minimum length 6";
        }

      case InputType.retypePassword:
        {
          return "Password not matched";
        }

      case InputType.mobile:
        {
          return "Please insert valid phone number";
        }

      default:
        return "This field cannot be empty";
    }
  }

  static String getLabel(InputType? type) {
    switch (type) {
      case InputType.firstName:
        {
          return "First Name";
        }
      case InputType.lastName:
        {
          return "Last Name";
        }

      case InputType.email:
        {
          return "What is your email address?";
        }
      case InputType.loginPass:
        {
          return "What is your password?";
        }
      case InputType.newPassword:
        {
          return "New Password";
        }
      case InputType.password:
        {
          return "Password";
        }

      case InputType.retypePassword:
        {
          return "Re-type password";
        }

      case InputType.mobile:
        {
          return "What is your mobile number?";
        }

      default:
        return "";
    }
  }

  static String getHintText(InputType? type) {
    switch (type) {
      case InputType.firstName:
        {
          return "Enter your first name";
        }

      case InputType.lastName:
        {
          return "Enter your last name";
        }

      case InputType.email:
        {
          return "Type your email address";
        }
      case InputType.loginPass:
        {
          return "Enter your password";
        }
      case InputType.newPassword:
        {
          return "Enter your new password";
        }
      case InputType.password:
        {
          return "Enter your password";
        }

      case InputType.retypePassword:
        {
          return "Re-enter your password";
        }

      case InputType.mobile:
        {
          return "Enter your mobile number";
        }

      default:
        return "Type here";
    }
  }

  static bool validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{11,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }

  static bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern as String);
    if (!regex.hasMatch(value))
      return false;
    else
      return true;
  }

}

enum InputType { email, mobile, password, retypePassword, newPassword, firstName, lastName, loginPass,}
