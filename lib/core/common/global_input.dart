// // ignore_for_file: library_private_types_in_public_api

// import 'package:barber/core/extension/text_extension.dart';
// import 'package:barber/core/extension/widget_extensions.dart';
// import 'package:barber/core/utils/app_colors.dart';
// import 'package:barber/gen/assets.gen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// class GlobalTextField extends StatefulWidget {
//   final String? hintText;
//   final TextInputType keyboardType;
//   final TextInputAction textInputAction;
//   final SvgGenImage? prefixIcon;
//   final Widget? prefixIconWidget;
//   final String caption;
//   final TextEditingController? controller;
//   final ValueChanged? onChanged;
//   final String? Function(String?)? validator;
//   final InputDecoration? decoration;

//   const GlobalTextField({
//     super.key,
//     this.hintText,
//     required this.keyboardType,
//     required this.textInputAction,
//     this.prefixIcon,
//     this.prefixIconWidget,
//     required this.caption,
//     this.controller,
//     this.onChanged,
//     this.validator,
//     this.decoration,
//   });

//   @override
//   _GlobalTextFieldState createState() => _GlobalTextFieldState();
// }

// class _GlobalTextFieldState extends State<GlobalTextField> {
//   bool _isPasswordVisible = false;
//   late MaskTextInputFormatter _phoneMaskFormatter;
//   bool _isValidInput = false;

//   @override
//   void initState() {
//     super.initState();
//     _phoneMaskFormatter = MaskTextInputFormatter(
//       mask: ' ## ###-##-##',
//       filter: {"#": RegExp(r'[0-9]')},
//     );
//     widget.controller?.addListener(_checkInput);
//   }

//   void _checkInput() {
//     if (widget.keyboardType == TextInputType.phone) {
//       final raw = _phoneMaskFormatter.getUnmaskedText();
//       setState(() {
//         _isValidInput = raw.length == 9;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     widget.controller?.removeListener(_checkInput);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // if (widget.caption.isNotEmpty)
//         //   Padding(
//         //     padding: const EdgeInsets.only(top: 4.0),
//         //     child: widget.caption
//         //         .s(14.sp)
//         //         .w(500)
//         //         .c(AppColors.c626262),
//         //   ),
//         // const SizedBox(height: 5),
//         TextFormField(
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14,
//             color: AppColors.black,
//           ),
//           onTapOutside: (event) {
//             FocusManager.instance.primaryFocus?.unfocus();
//           },
//           cursorColor: AppColors.cAAAAAA,
//           cursorHeight: 25.h,
//           decoration:
//               widget.decoration ??
//               InputDecoration(
//                 hintText: widget.hintText,
//                 hintStyle: TextStyle(
//                   color: AppColors.cAAAAAA,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 filled: true,
//                 fillColor: AppColors.white,
//                 contentPadding: EdgeInsets.symmetric(
//                   horizontal: 12.w,
//                   vertical: 16.h,
//                 ),
//                 prefixIcon:
//                     widget.prefixIconWidget ??
//                     (widget.prefixIcon != null
//                         ? widget.prefixIcon!
//                               .svg(height: 12, width: 12)
//                               .paddingAll(8)
//                         : null),
//                 suffixIcon: widget.keyboardType == TextInputType.visiblePassword
//                     ? IconButton(
//                         splashRadius: 1,
//                         icon: Icon(
//                           _isPasswordVisible
//                               ? Icons.visibility
//                               : Icons.visibility_off,
//                           color: AppColors.c8D8D8D,
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             _isPasswordVisible = !_isPasswordVisible;
//                           });
//                         },
//                       )
//                     : null,
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: AppColors.cEAEAEA, width: 1),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: _isValidInput
//                         ? AppColors.cFC9401
//                         : AppColors.cEAEAEA,
//                     width: 1,
//                   ),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),

//                 errorBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.red, width: 1),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: AppColors.cEAEAEA, width: 1),
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//               ),
//           controller: widget.controller,
//           keyboardType: widget.keyboardType,
//           textInputAction: widget.textInputAction,
//           inputFormatters: widget.keyboardType == TextInputType.phone
//               ? [_phoneMaskFormatter]
//               : null,
//           obscureText: widget.keyboardType == TextInputType.visiblePassword
//               ? !_isPasswordVisible
//               : false,
//           validator: widget.validator,
//         ),
//       ],
//     );
//   }
// }

import 'package:barber/core/extension/widget_extensions.dart';
import 'package:barber/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class GlobalTextField extends StatefulWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Widget? prefixIcon;
  final String caption;
  final Color fillColor;
  final Color hintColor;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  const GlobalTextField({
    super.key,
    this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    this.prefixIcon,
    required this.caption,
    this.controller,
    this.hintColor = AppColors.black,
    this.fillColor = AppColors.white,
    this.onChanged,
    this.suffixIcon,
    this.validator,
  });

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  bool _isPasswordVisible = false;
  late MaskTextInputFormatter _phoneMaskFormatter;
  bool _isValidInput = false;
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _phoneMaskFormatter = MaskTextInputFormatter(
      mask: ' ## ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
    );

    widget.controller?.addListener(_checkInput);

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  void _checkInput() {
    if (widget.keyboardType == TextInputType.phone) {
      final raw = _phoneMaskFormatter.getUnmaskedText();
      setState(() {
        _isValidInput = raw.length == 9;
      });
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_checkInput);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Colors.black,
      ),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      cursorColor: Colors.grey,
      cursorHeight: 25.h,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle:  TextStyle(
          color: widget.hintColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: _isFocused
            ? AppColors.cFFF4E5
            : widget.fillColor, // 🔹 fon rangi o‘zgaradi
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                splashRadius: 1,
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isFocused ? AppColors.cFC9401 : AppColors.cEAEAEA,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.cFC9401, width: 1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isFocused ? AppColors.cFC9401 : AppColors.cEAEAEA,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.keyboardType == TextInputType.phone
          ? [_phoneMaskFormatter]
          : null,
      obscureText: widget.keyboardType == TextInputType.visiblePassword
          ? !_isPasswordVisible
          : false,
      validator: widget.validator,
    );
  }
}
