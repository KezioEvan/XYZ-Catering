// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;

  const CustomeButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width = 350,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: greenEmerland,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: greenEmerland,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
