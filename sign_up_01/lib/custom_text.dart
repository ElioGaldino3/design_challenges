import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CustomText on Text {
  Text black() => copyWith(style: const TextStyle(color: Colors.black));

  Text red() => copyWith(style: TextStyle(color: Colors.red[400]));

  Text accentBlue() => copyWith(style: const TextStyle(color: Color(0xFF7CD2D7)));
  Text grey() => copyWith(style: const TextStyle(color: Color(0xFFA0A0A0)));
  Text white() => copyWith(style: const TextStyle(color: Color(0xFFFFFFFF)));

  Text poppins() => copyWith(style: GoogleFonts.poppins());

  Text overflowClip() => copyWith(overflow: TextOverflow.clip);
  Text overflowEllipsis() => copyWith(overflow: TextOverflow.ellipsis);

  Text size(double size) => copyWith(style: TextStyle(fontSize: size));
  Text letterSpacing(double size) => copyWith(style: TextStyle(letterSpacing: size));

  Text bold() => copyWith(style: const TextStyle(fontWeight: FontWeight.bold));
  Text regular() => copyWith(style: const TextStyle(fontWeight: FontWeight.normal));
  Text semiBold() => copyWith(style: const TextStyle(fontWeight: FontWeight.w700));

  Text center() => copyWith(textAlign: TextAlign.center);

  Text color(Color color) => copyWith(style: TextStyle(color: color));

  Text fontWeight(FontWeight fontWeight) => copyWith(style: TextStyle(fontWeight: fontWeight));

  Text copyWith({
    Key? key,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextStyle? style,
  }) {
    return Text(
      data ?? 'Desconhecido',
      key: key ?? this.key,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      style: style != null ? this.style?.merge(style) ?? style : this.style,
    );
  }
}
