import 'package:flutter/material.dart';
import 'package:meme/src/helpers/validation_helper.dart';
import 'package:meme/src/widgets/login.dart';
import 'package:meme/src/widgets/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1F1234),
        body: Column(
          children: [
            SizedBox(
              height: 450,
              width: 375,
              child: Stack(children: [
                Positioned(
                    top: -121,
                    left: 60,
                    height: 200,
                    child: Image.asset('assets/images/ash.png')),
                Positioned(
                    top: 34,
                    right: 47.69,
                    height: 180,
                    child: Image.asset('assets/images/red.png')),
                Positioned(
                    top: 40,
                    right: 210,
                    height: 220,
                    child: Image.asset('assets/images/blue.png')),
                Positioned(
                    top: 134,
                    left: 190,
                    height: 180,
                    child: Image.asset('assets/images/white.png')),
                Positioned(
                    top: 257,
                    right: 178.41,
                    height: 180,
                    child: Image.asset('assets/images/yellow.png'))
              ]),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 76),
              child: Row(
                children: const [
                  Text(
                    'Explore ',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xff445BD1),
                    ),
                  ),
                  Text(
                    'Memes',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 71),
              child: Row(
                children: const [
                  Text(
                    'Design ',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffD7C73B),
                    ),
                  ),
                  Text(
                    'Memes',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 71),
              child: Row(
                children: const [
                  Text(
                    'Find ',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffB152DE),
                    ),
                  ),
                  Text(
                    'Memes',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 39),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SignUpScreen(ValidationHelper())));
                },
                child: Container(
                  height: 58,
                  width: 278,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff3E60D8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF1E9E9),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 74),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, bottom: 45),
              child: Row(
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'JosefinSans',
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'JosefinSans',
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogIn(ValidationHelper())));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
