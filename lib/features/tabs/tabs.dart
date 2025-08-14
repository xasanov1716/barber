import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/features/home/presentation/home_page.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Widget> screens = [
    HomePage(),
    Scaffold(appBar: AppBar(), body: "Hello 1".s(17.sp)),
    Scaffold(appBar: AppBar(), body: "Hello 2".s(17.sp)),
    Scaffold(appBar: AppBar(), body: "Hello 3".s(17.sp)),
    
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,

        onTap: (value) {
          _currentPage = value;
          setState(() {});
        },
        selectedItemColor: AppColors.cFC9401,
        unselectedItemColor: AppColors.c897F7F,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.c897F7F,
        ),
        elevation: 0.0,
        backgroundColor: AppColors.white,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(
              colorFilter: ColorFilter.mode(
                _currentPage == 0 ? AppColors.cFC9401 : AppColors.c897F7F,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.explore.svg(
              colorFilter: ColorFilter.mode(
                _currentPage == 1 ? AppColors.cFC9401 : AppColors.c897F7F,
                BlendMode.srcIn,
              ),
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.myBooking.svg(
              colorFilter: ColorFilter.mode(
                _currentPage == 2 ? AppColors.cFC9401 : AppColors.c897F7F,
                BlendMode.srcIn,
              ),
            ),
            label: "My Booking",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.message.svg(
              colorFilter: ColorFilter.mode(
                _currentPage == 3 ? AppColors.cFC9401 : AppColors.c897F7F,
                BlendMode.srcIn,
              ),
            ),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.profile.svg(
              colorFilter: ColorFilter.mode(
                _currentPage == 4 ? AppColors.cFC9401 : AppColors.c897F7F,
                BlendMode.srcIn,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
