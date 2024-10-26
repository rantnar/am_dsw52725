import 'package:dsw_52725/utils/my_images.dart';
import 'package:dsw_52725/views/register/register_view/register_view.dart';
import 'package:flutter/material.dart';

import '../../utils/my_colors.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 62),
                Image.asset(MyImages.logo),
                Text('Sign In',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: MyColors.purpleColor,
                    )),
                Image.asset(MyImages.username),
                Image.asset(MyImages.password),


                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterView()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
