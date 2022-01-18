import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uipath.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/views/view_home.dart';
import 'package:e_commerce_example/views/view_sign_up.dart';
import 'package:e_commerce_example/widgets/widget_button.dart';
import 'package:e_commerce_example/widgets/widget_text.dart';
import 'package:e_commerce_example/widgets/widget_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewSignIn extends StatefulWidget {
  const ViewSignIn({Key? key}) : super(key: key);

  @override
  _ViewSignInState createState() => _ViewSignInState();
}

class _ViewSignInState extends State<ViewSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(UIPath.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  TextBasic(
                    text: UIText.loginTitle,
                    color: UIColor.white,
                    letterSpacing: 1.7,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextBasic(
                    text: UIText.loginSubTitle,
                    color: UIColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80, left: 24, right: 24),
              child: Column(
                children: [
                  const GetTextFormField(
                      obscureText: false,
                      hint: "Email",
                      prefixIcon: Icon(Icons.mail_outline),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  const GetTextFormField(
                      obscureText: true,
                      hint: "Password",
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: TextBasic(
                      text: UIText.forgotPswrd,
                      color: UIColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BasicButton(
                    onTap: () {
                      Get.to(() => const ViewHome());
                    },
                    backgroundColor: UIColor.primaryGreen,
                    buttonText: UIText.singIn,
                    textColor: UIColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextBasic(
                        text: UIText.loginAccountQuestion,
                        color: UIColor.white,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const ViewSignUp());
                        },
                        child: TextBasic(
                          text: UIText.singUpHere,
                          color: UIColor.primaryGreen,
                          fontSize: 14,
                          underline: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
