import 'package:flutter/material.dart';
import 'package:talabat/constants/app_colors.dart';

class ProfileElement extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onPress;

  const ProfileElement({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){
        onPress();
      },
      label: Text(
        label,
        style: const TextStyle(color: AppColors.defaultBlack),
      ),
      icon: Icon(
        icon, color: AppColors.defaultBlack,
      ),
    );
  }
}
