import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:e_commerce_example/shared/uitext.dart';
import 'package:e_commerce_example/views/view_home.dart';
import 'package:e_commerce_example/widgets/widget_button.dart';
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
                            child: Image.asset("assets/icons/appleLogo.png")),
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
                            child: Image.asset("assets/icons/facebookLogo.png")),
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
                            child: Image.asset("assets/icons/googleLogo.png")),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          UIText.signUpAccountQuestion,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          UIText.singInHere,
                          style: TextStyle(
                            color: UIColor.primaryGreen,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
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
