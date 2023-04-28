class ValidationHelper {
  String? validateFirstName(String value) {
    if (value.isEmpty) {
      return "Please fill field";
    }
    return null;
  }

  String? validateLastName(String value) {
    if (value.isEmpty) {
      return "Please fill field";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Enter a valid password";
    } else if (value.length < 8) {
      return " Password must be at least 8 characters";
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }
    return null;
  }

  String? validatePhoneNumber(String value) {
    if (value.isEmpty) {
      return "Enter a valid phone number";
    } else if (value.length > 11) {
      return " Invalid Phone Number";
    }

    return null;
  }

  String? validatePin(String value) {
    if (value.isEmpty) {
      return "Enter a valid pin";
    } else if (value.length < 4) {
      return "Pin must be 4 characters";
    }
    return null;
  }
}
