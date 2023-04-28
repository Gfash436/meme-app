import 'package:flutter/material.dart';
import 'package:meme/src/helpers/validation_helper.dart';
import 'package:meme/src/widgets/login.dart';
import 'package:meme/src/widgets/verify.dart';

class Verified extends StatefulWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 26, right: 19),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Verify()));
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xff000000),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LogIn(ValidationHelper())));
                      }),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 103.99),
              SizedBox(
                  height: 252,
                  width: 263.08,
                  child: Image.asset('assets/images/Verified.png')),
              const SizedBox(height: 78),
              const Text(
                textAlign: TextAlign.center,
                'Account Successfully\nVerified',
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
