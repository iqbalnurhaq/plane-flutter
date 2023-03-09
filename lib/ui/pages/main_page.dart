import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_buttom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtomNavigationItem(
                imageUrl: 'assets/ic_home.svg',
                isSelected: true,
              ),
              CustomButtomNavigationItem(imageUrl: 'assets/ic_booking.svg'),
              CustomButtomNavigationItem(imageUrl: 'assets/ic_card.svg'),
              CustomButtomNavigationItem(imageUrl: 'assets/ic_settings.svg'),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
