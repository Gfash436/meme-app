import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:meme/splash.dart';
import 'package:meme/src/helpers/validation_helper.dart';
import 'package:meme/src/widgets/refactored_widgets/custom_textfield.dart';
import 'package:meme/src/widgets/refactored_widgets/password_field.dart';
import 'package:meme/src/widgets/verify.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatefulWidget {
  ValidationHelper validationHelper;
  SignUpScreen(this.validationHelper, {super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SplashScreen()));
                        },
                        child: const Icon(Icons.arrow_back_rounded,
                            color: Color(0xff000000))),
                  ),
                  const SizedBox(height: 29),
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Kindly fill the information below, to create\naccount',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextFormField(
                          // hight: 56,
                          width: 140,
                          heading: 'First Name',
                          hintText: 'Enter First Name',
                          keyboardType: TextInputType.name,
                          controller: _firstnameController,
                          customValidator: (value) => widget.validationHelper
                              .validateFirstName(value!)),
                      const Spacer(),
                      CustomTextFormField(
                          // hight: 56,
                          width: 140,
                          heading: 'Last Name',
                          hintText: 'Enter Last Name',
                          keyboardType: TextInputType.name,
                          controller: _lastnameController,
                          customValidator: (value) =>
                              widget.validationHelper.validateLastName(value!)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CustomTextFormField(
                      heading: 'Email Address',
                      hintText: 'Enter your Email Address',
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      customValidator: (value) =>
                          EmailValidator.validate(value!.trim())
                              ? null
                              : "Please enter a valid email"),
                  const SizedBox(height: 12),
                  CustomTextFormField(
                      heading: 'Phone Number',
                      hintText: 'Enter your Phone Number',
                      keyboardType: TextInputType.phone,
                      controller: _phonenumberController,
                      customValidator: (value) =>
                          widget.validationHelper.validatePhoneNumber(value!)),
                  const SizedBox(height: 12),
                  PasswordTextFormField(
                    heading: 'Password',
                    controller: _passwordController,
                    customValidator: (value) {
                      return widget.validationHelper.validatePassword(value!);
                    },
                  ),
                  const SizedBox(height: 10),
                  FormField(
                    builder: (FormFieldState<bool> state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Checkbox(
                                value: _checked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _checked = !_checked;
                                    state.didChange(_checked);
                                  });
                                },
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'I agree to the ',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      Text(
                                        'terms of services ',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB152DE),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'and ',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      Text(
                                        'privacy policy',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB152DE),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          state.hasError
                              ? Text(
                                  state.errorText!,
                                  style: const TextStyle(color: Colors.red),
                                )
                              : Container(),
                        ],
                      );
                    },
                    validator: (value) {
                      if (!_checked) {
                        return 'You must agree to the terms and conditions';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 52,
                    width: 315,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff857C94),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Verify()));
                        }
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'JosefinSans',
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
