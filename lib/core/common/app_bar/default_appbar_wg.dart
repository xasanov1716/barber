import 'package:barber/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../utils/app_responsive.dart';

class DefaultAppBarWg extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBarWg({
    super.key,
    required this.titleText,
    this.onSearchPressed,
    required this.onMorePressed,
  });

  final String titleText;
  final VoidCallback? onSearchPressed;
  final VoidCallback onMorePressed;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: false,
      title: Text(
        titleText,
      ).s(24).w(600),
      actions: [
        if (onSearchPressed != null)
          IconButton(
            onPressed: onSearchPressed,
            icon: Icon(
              IconlyLight.search,
              size: appH(28),
              color: Colors.black,
            ),
          ),
        IconButton(
          onPressed: onMorePressed,
          icon: Icon(
            IconlyLight.more_circle,
            size: appH(28),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
