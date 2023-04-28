import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final double? hight;
  final double? width;
  final String heading;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? customValidator;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    this.hight,
    this.width,
    this.keyboardType,
    required this.hintText,
    required this.heading,
    this.customValidator,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff333333),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, right: 19),
          child: SizedBox(
            height: hight,
            width: width,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontFamily: 'JosefinSans',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8C8C8C),
                ),
                // icon: Image.asset('assets/images/Vector.png'),
              ),
              keyboardType: keyboardType,
              validator: customValidator,
            ),
          ),
        ),
      ],
    );
  }
}
