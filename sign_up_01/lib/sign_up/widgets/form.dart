import 'package:flutter/material.dart';
import 'package:sign_up_01/custom_text.dart';
import 'package:sign_up_01/sign_up/widgets/custom_text_form_field.dart';
import 'package:sign_up_01/sign_up/widgets/social_buttons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});
  final formFieldGap = 37.0;

  String? validatorNotEmpty(String? value) {
    if ((value?.isEmpty ?? false) || value!.length < 4) return 'O campo deve conter ao menos 4 caracteres';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Create Account').poppins().size(25).semiBold().black().letterSpacing(.4),
          const SizedBox(height: 23),
          const SocialButtons(),
          const SizedBox(height: 30),
          CustomTextFormField(label: 'Full Name', validator: validatorNotEmpty),
          SizedBox(height: formFieldGap),
          CustomTextFormField(label: 'Email Address', validator: validatorNotEmpty),
          SizedBox(height: formFieldGap),
          CustomTextFormField(label: 'Password', validator: validatorNotEmpty, isPassword: true),
          const SizedBox(height: 39),
          ElevatedButton(
            onPressed: () {},
            child: SizedBox(width: double.infinity, child: Center(child: const Text('Create Account').poppins().white().bold().size(17))),
          ),
          const SizedBox(height: 17),
          Row(children: [
            const Text('Already have an account? ').poppins().grey().size(15),
            const Text('Log in').poppins().accentBlue().size(15),
          ])
        ],
      ),
    );
  }
}
