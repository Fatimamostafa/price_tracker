import 'package:pricetracker/src/core/utils/imports.dart';

class CardContainer extends StatelessWidget {
  final double? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final bool? withBorder;
  final Color? borderColor;
  final double? borderWidth;
  final Widget child;

  const CardContainer({
    Key? key,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.withBorder,
    this.borderColor,
    this.borderWidth,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        padding ?? applySpacing(2),
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        border: withBorder != null
            ? Border.all(
                color: borderColor ?? AppColors.blue,
                width: borderWidth ?? 1,
              )
            : null,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
      ),
      child: child,
    );
  }
}
