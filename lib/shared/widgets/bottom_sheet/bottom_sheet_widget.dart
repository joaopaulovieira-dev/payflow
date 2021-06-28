import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secundaryLabel,
    required this.secundaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      child: Column(
        children: [
          Text(title),
          Text(subtitle),
          SetLabelButton(
              primaryLabel: primaryLabel,
              primaryOnPressed: primaryOnPressed,
              secundaryLabel: secundaryLabel,
              secundaryOnPressed: secundaryOnPressed)
        ],
      ),
    );
  }
}
