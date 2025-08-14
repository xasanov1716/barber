import 'package:barber/core/common/global_input.dart';
import 'package:barber/core/extension/size_extensions.dart';
import 'package:barber/core/extension/text_extension.dart';
import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:barber/core/utils/extensions.dart';
import 'package:barber/features/notification/presentation/pages/notification_page.dart';
import 'package:barber/gen/assets.gen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Haircuts', 'Make up', 'Manicure', 'Massage'];

    final List<Image> images = [
      Assets.images.haircuts.image(
        height: 30.appH(context),
        width: 30.appW(context),
      ),
      Assets.images.make.image(
        height: 30.appH(context),
        width: 30.appW(context),
      ),
      Assets.images.manicure.image(
        height: 30.appH(context),
        width: 30.appW(context),
      ),
      Assets.images.massage.image(
        height: 30.appH(context),
        width: 30.appW(context),
      ),
    ];
    return Scaffold(
      backgroundColor: AppColors.cF7F7F7,
      appBar: AppBar(
        backgroundColor: AppColors.cF7F7F7,
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: "Casca".s(24.sp).w(600).c(AppColors.black),
        leading: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cFC9401,
          ),
          child: Assets.icons.logo.svg().paddingAll(6),
        ).paddingAll(10),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            ),
            child: Assets.icons.notification.svg(),
          ),
          10.pw,
          Assets.icons.pin.svg(),
          28.pw,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            44.ph,
            "Morning, Daniel".s(32.sp).w(600).c(AppColors.black),
            16.ph,
            GlobalTextField(
              hintText: "Search",
              hintColor: AppColors.cABABAB,
              fillColor: AppColors.cEFEFEF,
              suffixIcon: Assets.icons.filter.svg().paddingAll(10),
              prefixIcon: Assets.icons.search.svg().paddingAll(10),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              caption: "",
            ),
            24.ph,
            SizedBox(
              width: double.infinity,
              height: 200.appH(context),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: AppColors.cFC9401,
                ),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: List.generate(
                        3,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "30% OFF".s(16.sp).c(AppColors.white),
                                "30%".s(40.sp).c(AppColors.white),
                              ],
                            ),
                            "Today's Special"
                                .s(24.sp)
                                .c(AppColors.white)
                                .w(400),
                            "Get a discount for every service order!Only valid for today!"
                                .s(16.sp)
                                .c(AppColors.white),
                          ],
                        ).paddingSymmetric(horizontal: 16),
                      ),
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            24.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                items.length,
                (index) => Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.cFFF1E3,
                      ),
                      child: images[index].paddingAll(19),
                    ),
                    12.ph,
                    items[index].s(16.sp).c(AppColors.black).w(500),
                  ],
                ),
              ),
            ),
            24.ph,
            Divider(color: AppColors.cDEDEDE),
            24.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Nearby Your Location".s(16.sp).c(AppColors.black).w(600),
                "See All".s(16.sp).c(AppColors.cFC9401).w(600),
              ],
            ),
            18.ph,
            ...List.generate(
              3,
              (index) => SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Assets.images.bella.image(
                            height: 110.appH(context),
                            width: 96.appW(context),
                          ),
                        ],
                      ),
                      8.pw,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          "Bella Curls".s(18.sp).w(600).c(AppColors.black),
                          16.ph,
                          "00930 Novick Parkway"
                              .s(16.sp)
                              .w(400)
                              .c(AppColors.c494949),
                          16.ph,
                          Row(
                            children: [
                              Assets.icons.location.svg(),
                              "1.4 km".s(16.sp).w(400),
                              4.pw,
                              Assets.images.star.image(
                                height: 20.appH(context),
                                width: 20.appW(context),
                              ),
                              4.pw,
                              "4.9".s(16.sp).w(400),
                            ],
                          ),
                        ],
                      ),
                      Assets.icons.saved.svg(),
                    ],
                  ).paddingAll(16),
                ).paddingSymmetric(vertical: 6.h),
              ),
            ),
            18.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Most Popular".s(20.sp).w(600).c(AppColors.black),
                "See All".s(16.sp).w(400).c(AppColors.cFC9401),
              ],
            ),
            ...List.generate(
              3,
              (index) => SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Assets.images.bella.image(
                            height: 110.appH(context),
                            width: 96.appW(context),
                          ),
                        ],
                      ),
                      8.pw,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          "Bella Curls".s(18.sp).w(600).c(AppColors.black),
                          16.ph,
                          "00930 Novick Parkway"
                              .s(16.sp)
                              .w(400)
                              .c(AppColors.c494949),
                          16.ph,
                          Row(
                            children: [
                              Assets.icons.location.svg(),
                              "1.4 km".s(16.sp).w(400),
                              4.pw,
                              Assets.images.star.image(
                                height: 20.appH(context),
                                width: 20.appW(context),
                              ),
                              4.pw,
                              "4.9".s(16.sp).w(400),
                            ],
                          ),
                        ],
                      ),
                      Assets.icons.saved.svg(),
                    ],
                  ).paddingAll(16),
                ).paddingSymmetric(vertical: 6.h),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 24.w),
      ),
    );
  }
}
