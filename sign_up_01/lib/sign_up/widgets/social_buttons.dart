import 'package:flutter/material.dart';
import 'package:sign_up_01/custom_text.dart';
import 'package:sign_up_01/responsive_builder.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ResponsiveBuilder(
          xs: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _socialButtons()),
          xxs: Column(crossAxisAlignment: CrossAxisAlignment.center, children: _socialButtons(height: 12)),
        ),
        const SizedBox(height: 35),
        const Text('- OR -').poppins().regular().size(18).color(isDarkMode ? const Color(0xFFffffff) : const Color(0xFF909090)),
      ],
    );
  }

  List<Widget> _socialButtons({double? height}) => [
        OutlinedButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/images/google-logo.png'),
              const SizedBox(width: 13),
              const Text('Sign up with Google').poppins().regular().size(12),
            ],
          ),
        ),
        SizedBox(height: height),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/images/facebook-logo.png'),
              const SizedBox(width: 13),
              const Text('Sign up with Facebook').poppins().regular().size(12),
            ],
          ),
        ),
      ];
}
