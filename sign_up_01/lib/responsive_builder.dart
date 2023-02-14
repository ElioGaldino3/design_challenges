import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget? xxs, xs, md, lg;
  const ResponsiveBuilder({
    super.key,
    this.xxs,
    this.xs,
    this.md,
    this.lg,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      debugPrint('${constrains.maxWidth}');
      if (constrains.maxWidth < 411) {
        return selectByWidthLevel(0);
      } else if (constrains.maxWidth < 576) {
        return selectByWidthLevel(1);
      } else if (constrains.maxWidth < 1140) {
        return selectByWidthLevel(2);
      } else if (constrains.maxWidth > 1140) {
        return selectByWidthLevel(3);
      }
      return selectByWidthLevel(0);
    });
  }

  Widget selectByWidthLevel(int level) {
    switch (level) {
      case 0:
        return xxs ?? xs ?? md ?? lg ?? const SizedBox.shrink();
      case 1:
        return xs ?? md ?? lg ?? xxs ?? const SizedBox.shrink();
      case 2:
        return md ?? lg ?? xs ?? xxs ?? const SizedBox.shrink();
      case 3:
        return lg ?? md ?? xs ?? xxs ?? const SizedBox.shrink();
      default:
        return const SizedBox.shrink();
    }
  }
}
