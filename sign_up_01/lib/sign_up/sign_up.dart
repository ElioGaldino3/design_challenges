import 'package:flutter/material.dart';
import 'package:sign_up_01/colors.dart';
import 'package:sign_up_01/custom_text.dart';
import 'package:sign_up_01/responsive_builder.dart';

import 'widgets/form.dart';
import 'widgets/select_language_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveBuilder(
          lg: Stack(
            children: [
              Container(
                color: lightColours.backgroundColor,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(38), bottomLeft: Radius.circular(38)),
                    color: Colors.white,
                  ),
                  width: 748,
                  height: size.height,
                  child: const Center(
                    child: SizedBox(
                      width: 411,
                      child: SignUpForm(),
                    ),
                  ),
                ),
              ),
              Positioned(top: 25, left: 30, child: Image.asset('assets/images/enterprise-logo.png')),
              const Positioned(top: 25, right: 30, child: SelectLanguageButton()),
              Positioned(
                top: 93,
                left: 30,
                child: SizedBox(
                  width: 309,
                  child: const Text(pageDesc).poppins().size(22).letterSpacing(.4).white(),
                ),
              ),
              Positioned(
                top: size.height * .30,
                left: 20,
                child: Transform.rotate(angle: -0.15, child: Image.asset('assets/images/art.png')),
              ),
            ],
          ),
          md: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/enterprise-logo.png'),
                    const SelectLanguageButton(),
                  ],
                ),
                const SizedBox(height: 32),
                const SizedBox(
                  width: 411,
                  child: SignUpForm(),
                )
              ],
            ),
          )),
    );
  }
}

const String pageDesc = 'Find 3D Objects, Mockups and Ilustration here';
