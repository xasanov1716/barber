// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

extension TextStringExtensions on String {
  Text s(double size) => Text(this).s(size);

  Text w(int weight) => Text(this).w(weight);

  Text c(Color color) => Text(this).c(color);

  Text text({TextAlign? textAlign, int? maxLines}) => Text(
        this,
        textAlign: textAlign,
        maxLines: maxLines,
      );
}

extension TextStyleExtensions on TextStyle {
  TextStyle copyWith({
    bool? inherit,  
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        inherit: inherit ?? this.inherit,
        color: this.foreground == null && foreground == null ? color ?? this.color : null,
        backgroundColor: this.background == null && background == null ? backgroundColor ?? this.backgroundColor : null,
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        fontStyle: fontStyle ?? this.fontStyle,
        fontFamily: 'Regular',
        letterSpacing: letterSpacing ?? this.letterSpacing,
        wordSpacing: wordSpacing ?? this.wordSpacing,
        textBaseline: textBaseline ?? this.textBaseline,
        height: height ?? this.height,
        locale: locale ?? this.locale,
        foreground: foreground ?? this.foreground,
        background: background ?? this.background,
        decoration: decoration ?? this.decoration,
        decorationColor: decorationColor ?? this.decorationColor,
        decorationStyle: decorationStyle ?? this.decorationStyle,
        decorationThickness: decorationThickness ?? this.decorationThickness,
        overflow: overflow ?? this.overflow,
        
      );
}

extension TextExtensions on Text {
  Text copyWith({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
  }) =>
      Text(
        data ?? this.data!,
        style: (style ?? this.style)?.copyWith(
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          foreground: foreground,
          background: background,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
          package: package,
        ),
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
        selectionColor: selectionColor ?? this.selectionColor,
      );

  Text s(double size) => copyWith(
        style: (style ?? const TextStyle()).copyWith(fontSize: size),
      );

  Text c(Color color) => copyWith(
        style: (style ?? const TextStyle()).copyWith(color: color),
      );

  Text a(TextAlign textAlign) => copyWith(
        style: (style ?? const TextStyle()),
        textAlign: textAlign,
      );

  Text w(int fontWeight) {
    final weight = FontWeight.values[fontWeight ~/ 100 - 1];
    return copyWith(style: (style ?? const TextStyle()).copyWith(fontWeight: weight));
  }

  Text styles({TextOverflow? overflow}) => Text(
        data ?? '',
        style: TextStyle(
          fontSize: style?.fontSize,
          fontWeight: style?.fontWeight,
          color: style?.color,
          overflow: overflow,
          decorationThickness: 2.8,
          height: style?.height ?? 2,
        ),
      );
}
