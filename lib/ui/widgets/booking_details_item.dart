import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;
  const BookingDetailsItem({
    super.key,
    required this.title,
    required this.valueText,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            width: 16,
            height: 16,
            child: SvgPicture.asset('assets/ic_check.svg'),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
