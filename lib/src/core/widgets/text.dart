import 'package:pricetracker/src/core/utils/imports.dart';

class AppText extends StatelessWidget {
  const AppText(
      {Key? key,
      this.color,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.overflow,
      this.softWrap,
      this.style,
      this.maxLine,
      this.letterSpacing,
      this.textAlign,
      this.textDecoration,
      this.fontFamily,
      required this.textType})
      : super(key: key);

  final String? text;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final bool? softWrap;
  final int? maxLine;
  final TextStyle? style;
  final String? fontFamily;
  final TextType textType;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      overflow: overflow,
      textAlign: textAlign,
      softWrap: softWrap,
      maxLines: maxLine,
      style: TextStyle(
        color: textType.style.color ?? color ?? Colors.black,
        fontSize: textType.style.fontSize ?? 14,
        fontWeight: textType.style.fontWeight,
        letterSpacing: 0.3,
        decoration: textDecoration,
      ),
    );
  }
}

extension TextTypeExtension on TextType {
  TextStyle get style {
    switch (this) {
      case TextType.regular:
        return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: applySpacing(2),
        );
      case TextType.light:
        return TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: applySpacing(2),
        );
      case TextType.bold:
        return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: applySpacing(4),
        );
    }
  }
}

enum TextType { bold, regular, light }
