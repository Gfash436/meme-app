import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:meme/src/helpers/validation_helper.dart';
import 'package:meme/src/widgets/home_screen.dart';
import 'package:meme/src/widgets/refactored_widgets/custom_textfield.dart';
import 'package:meme/src/widgets/refactored_widgets/password_field.dart';
import 'package:meme/src/widgets/sign_up.dart';
import 'package:meme/src/widgets/verified.dart';

// ignore: must_be_immutable
class LogIn extends StatefulWidget {
  ValidationHelper validationHelper;
  LogIn(this.validationHelper, {super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verified()));
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(height: 31.99),
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(height: 68),
              Form(
                key: _formKey,
                child: Column(
                  children: [
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
                    PasswordTextFormField(
                      heading: 'Password',
                      controller: _passwordController,
                      customValidator: (value) {
                        return widget.validationHelper.validatePassword(value!);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33),
              SizedBox(
                height: 52,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                              builder: (context) => const HomeScreen()),
                        );
                      }
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'JosefinSans',
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 115),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              SizedBox(
                height: 52,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 21, right: 19),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SignUpScreen(ValidationHelper())),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'JosefinSans',
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
