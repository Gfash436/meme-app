import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final String heading;
  final String? Function(String?)? customValidator;
  final TextEditingController controller;
  const PasswordTextFormField({
    super.key,
    this.customValidator,
    required this.heading,
    required this.controller,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.heading,
        style: const TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff333333)),
      ),
      TextFormField(
        obscureText: _visible,
        controller: widget.controller,
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
          hintText: 'Enter Password',
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
        validator: widget.customValidator,
      ),
    ]);
  }
}
