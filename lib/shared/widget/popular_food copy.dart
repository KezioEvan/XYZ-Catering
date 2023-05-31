// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PopularFood extends StatelessWidget {
  String image;
  String price;
  String title;
  String location;
  PopularFood({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: greenEmerlandTextStyle.copyWith(
                fontSize: 13,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'IDR. $price',
              style: greenEmerlandTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Text(
                  location,
                  style: greenEmerlandTextStyle.copyWith(
                    fontSize: 11,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
