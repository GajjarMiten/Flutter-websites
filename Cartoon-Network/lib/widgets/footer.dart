import 'package:flutter/material.dart';
import 'package:pokedex/provider/scrollProvider.dart';
import 'package:pokedex/style.dart';
import 'package:provider/provider.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final scrollController = Provider.of<ScrollProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Row(
            children: [
              Text(
                "Facebook",
                style: secondaryText,
              ),
              SizedBox(
                width: 48,
              ),
              Text(
                "Twitter",
                style: secondaryText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  scrollController.previousPage();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_left_rounded,
                      size: 45,
                    ),
                    Text(
                      "Prev",
                      style: subTitle,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  scrollController.nextPage();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Next",
                      style: subTitle,
                    ),
                    Icon(
                      Icons.arrow_right_rounded,
                      size: 45,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
