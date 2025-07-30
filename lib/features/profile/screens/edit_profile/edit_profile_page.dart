import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/common/app_bar/action_app_bar.dart';
import '../../../../core/common/default_button_wg.dart';
import '../../../../core/common/strings/app_strings.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ActionAppBarWg(
        onBackPressed: () {
          Navigator.pop(context);
        },
        titleText: AppStrings.editProfile,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: appW(24),
          left: appW(24),
          top: appH(24),
          bottom: appH(48),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: appH(24),
              children: [
                _blankContainer(Text("Elon Musk", style: _textStyle)),
                _blankContainer(Text("Elon", style: _textStyle)),
                _blankContainer(
                  _rowSpaceBetween([
                    Text("12/12/2012", style: _textStyle),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(IconlyLight.calendar, size: appH(20)),
                    ),
                  ]),
                ),
                _blankContainer(
                  _rowSpaceBetween([
                    Text("elon@gmail.com", style: _textStyle),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(IconlyLight.message, size: appH(20)),
                    ),
                  ]),
                ),
                _blankContainer(
                  _rowSpaceBetween([
                    Text("United Kingdom", style: _textStyle),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(IconlyBold.arrow_down_2, size: appH(20)),
                    ),
                  ]),
                ),
                _blankContainer(
                  Row(
                    children: [
                      Image.asset("assets/images/usa.png"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down, size: appH(20)),
                      ),
                      Text("+998 90 200 40 20", style: _textStyle),
                    ],
                  ),
                ),
                _blankContainer(
                  _rowSpaceBetween([
                    Text("Female", style: _textStyle),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(IconlyBold.arrow_down_2, size: appH(20)),
                    ),
                  ]),
                ),
                _blankContainer(Text("Student", style: _textStyle)),
              ],
            ),
            DefaultButtonWg(title: AppStrings.update, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

Widget _rowSpaceBetween(List<Widget> widgets) =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: widgets);

final _textStyle = TextStyle(
  color: AppColors.greyScale.grey900,
  fontSize: 14,
);

Widget _blankContainer(Widget widget) => Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: appW(20)),
      width: double.infinity,
      height: appH(56),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyScale.grey50,
      ),
      child: widget,
    );
