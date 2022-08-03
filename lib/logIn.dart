import 'package:flutter/material.dart';
import 'package:meme/signUp.dart';
import 'package:meme/verified.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 26),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verified()));
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: const Color(0xff000000),
                ),
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
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff333333),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 19),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Enter your Email Address',
                        hintStyle: const TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8C8C8C),
                        ),
                        // icon: Image.asset('assets/images/Vector.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 21, right: 19),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    const Text(
                      'Enter Password',
                      // ignore: unnecessary_const
                      style: const TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff333333)),
                    ),
                    TextFormField(
                      obscureText: _visible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8C8C8C),
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
                  ]),
            ),
            const SizedBox(height: 33),
            SizedBox(
              height: 52,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff857C94),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
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
            const Padding(
              padding: EdgeInsets.only(left: 115),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
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
                    primary: const Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
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
            const SizedBox(height: 150),
            Center(child: Image.asset('assets/images/Home Indicator.png')),
          ]),
        ),
      ),
    );
  }
}
