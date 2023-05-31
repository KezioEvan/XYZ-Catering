// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CustomeTextFormF extends StatelessWidget {
  String title;
  bool obscureTxt;
  CustomeTextFormF({
    Key? key,
    required this.title,
    this.obscureTxt = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: greenEmerlandTextStyle.copyWith(
            fontSize: 14,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          obscureText: obscureTxt,
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: greenFadedolor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: greenFadedolor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
