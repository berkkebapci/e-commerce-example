import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/views/view_home.dart';
import 'package:e_commerce_example/views/view_sign_up.dart';
import 'package:e_commerce_example/widgets/widget_button.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
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
                    Text(
                      UIText.loginTitle,
                      style: const TextStyle(
                          letterSpacing: 1.7,
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      UIText.loginSubTitle,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Text(
                        UIText.forgotPswrd,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    BasicButton(
                      onTap: () {
                        Get.to(const ViewHome());
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
                        Text(
                          UIText.loginAccountQuestion,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ViewSignUp());
                          },
                          child: Text(
                            UIText.singUpHere,
                            style: TextStyle(
                              color: UIColor.primaryGreen,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
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
