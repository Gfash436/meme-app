import 'package:flutter/material.dart';
import 'package:meme/splash.dart';
import 'package:meme/verify.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();
  bool _visible = true;
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
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
                                    builder: (context) =>
                                        const SplashScreen()));
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
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'First Name',
                              style: TextStyle(
                                fontFamily: 'JosefinSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 2),
                            SizedBox(
                              height: 56,
                              width: 160,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      hintText: 'Enter First Name',
                                      hintStyle: const TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8C8C8C),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Last Name',
                                style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 2),
                              SizedBox(
                                height: 56,
                                width: 140,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        hintText: 'Enter Last Name',
                                        hintStyle: const TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff8C8C8C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email Address',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 2),
                        SizedBox(
                          height: 56,
                          width: 315,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Enter your Email Address',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8C8C8C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Phone Number',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 2),
                        SizedBox(
                          height: 80,
                          width: 315,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                maxLength: 11,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Enter your Phone Number',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8C8C8C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create Password',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff333333),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 315,
                          child: TextFormField(
                            obscureText: _visible,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Create Password',
                              labelStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              suffix: GestureDetector(
                                child: Image.asset('assets/images/Vector.png'),
                                onTap: () {
                                  setState(() {
                                    _visible = !_visible;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: _checked,
                          onChanged: (bool? value) {
                            setState(() {
                              _checked = !_checked;
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
                    const SizedBox(height: 23),
                    SizedBox(
                      height: 52,
                      width: 315,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff857C94),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          //  if (formkey.currentState!.validate()) {};
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Verify()));
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
                    const SizedBox(height: 48),
                    Center(
                        child: Image.asset('assets/images/Home Indicator.png')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
