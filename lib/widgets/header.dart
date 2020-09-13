import 'package:flutter/material.dart';

import '../style.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Image.asset(
                  'assets/cn.png',
                  scale: 8,
                ),
                Text(
                  "Characters",
                  style: title,
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xfff4f4f4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  Text(
                    "Search Characters...",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Row(
              children: [
                Text(
                  "Menu",
                  style: subTitle,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.double_arrow_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
