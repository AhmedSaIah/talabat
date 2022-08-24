import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utlis/data_provider.dart';
import 'package:talabat/constants/app_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        CircleAvatar(backgroundImage: NetworkImage('https://i.imgur.com/IVGNMtr.png'),),
        Text('Ahmed Salah'),
      ],
    );
  }
}
