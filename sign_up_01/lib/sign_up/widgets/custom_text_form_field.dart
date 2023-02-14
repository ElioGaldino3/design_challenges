import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final bool isPassword;
  const CustomTextFormField({super.key, required this.label, this.validator, this.isPassword = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: widget.label,
          suffix: widget.isPassword
              ? IconButton(
                  onPressed: () => setState(() {
                    obscureText = !obscureText;
                  }),
                  icon: Icon(
                    obscureText ? CommunityMaterialIcons.eye_off_outline : CommunityMaterialIcons.eye_outline,
                    color: isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFA0A0A0),
                  ),
                )
              : null,
          labelStyle: GoogleFonts.poppins().copyWith(fontSize: 15, color: isDarkMode ? null : const Color(0xFFA0A0A0)),
          contentPadding: const EdgeInsets.only(top: 0)),
    );
  }
}
