import 'package:flutter/material.dart';
import 'package:pokedex/style.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Row(
            children: [
              Text("Facebook"),
              SizedBox(
                width: 48,
              ),
              Text("Twitter"),
            ],
          ),
        ),
        Row(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_left_rounded,
                  size: 45,
                ),
                Text(
                  "Prev",
                  style: subTitle,
                )
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              children: [
                Text(
                  "Next",
                  style: subTitle,
                ),
                Icon(
                  Icons.arrow_right_rounded,
                  size: 45,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
