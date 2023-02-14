import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_01/custom_text.dart';

class SelectLanguageButton extends StatelessWidget {
  const SelectLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('English (UK)').poppins().size(14).letterSpacing(.4).grey(),
        const Icon(CommunityMaterialIcons.menu_down, color: Color(0xFFA1A1A1)),
      ],
    );
  }
}
