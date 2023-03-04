import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:flutter_svg/svg.dart';

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            child: SvgPicture.asset('assets/ic_check.svg'),
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
