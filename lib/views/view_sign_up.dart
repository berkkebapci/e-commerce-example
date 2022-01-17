import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uipath.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/views/view_home.dart';
import 'package:e_commerce_example/views/view_sign_in.dart';
import 'package:e_commerce_example/widgets/widget_button.dart';
import 'package:e_commerce_example/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewSignUp extends StatefulWidget {
  const ViewSignUp({Key? key}) : super(key: key);

  @override
  _ViewSignUpState createState() => _ViewSignUpState();
}

class _ViewSignUpState extends State<ViewSignUp> {
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
        child: Center(
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
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Email",
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.w300),
                          prefixIcon: const Icon(Icons.mail_outline)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.w300),
                          prefixIcon: const Icon(Icons.lock_outline)),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    BasicButton(
                      onTap: () {
                        Get.to(const ViewHome());
                      },
                      backgroundColor: UIColor.primaryGreen,
                      buttonText: UIText.singUp,
                      textColor: UIColor.white,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: UIColor.white,
                            ),
                            height: 50,
                            width: 50,
                            child: Image.asset(UIPath.appleLogo)),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: UIColor.white,
                            ),
                            height: 50,
                            width: 50,
                            child: Image.asset(UIPath.facebookLogo)),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: UIColor.white,
                            ),
                            height: 50,
                            width: 50,
                            child: Image.asset(UIPath.googleLogo)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextBasic(
                          text: UIText.signUpAccountQuestion,
                          color: UIColor.white,
                          fontSize: 14,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ViewSignIn());
                          },
                          child: TextBasic(
                            text: UIText.singInHere,
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
      ),
    );
  }
}
