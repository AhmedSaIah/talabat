import 'package:flutter/material.dart';
import 'package:talabat/constants/app_colors.dart';
import 'package:talabat/components/profile_element.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,top: 70, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://i.imgur.com/IVGNMtr.png'),
                  ),
                  const SizedBox(width: 20.0),
                  const Text('Mark', style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(width: 210),
                  TextButton(
                    onPressed: (){},
                    child: const Icon(
                      Icons.settings,
                      color: AppColors.defaultBlack,
                    ),
                  ),
                ],
              ),
            ),
            ProfileElement(icon: Icons.change_history_outlined, label: 'Your Orders', onPress: (){}),
            ProfileElement(icon: Icons.local_offer_outlined, label: 'Offers', onPress: (){}),
            ProfileElement(icon: Icons.notifications_none, label: 'Notifications', onPress: (){}),
            ProfileElement(icon: Icons.payment_outlined, label: 'talabat Pay', onPress: (){}),
            ProfileElement(icon: Icons.card_giftcard_outlined, label: 'Vouchers', onPress: (){}),
            ProfileElement(icon: Icons.help_outline_outlined, label: 'Get Help', onPress: (){}),
            ProfileElement(icon: Icons.perm_device_info_outlined, label: 'About', onPress: (){}),
          ],
        ),
      ),
    );
  }
}
