import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/utils/buttons.dart';
import 'package:wallet_app/utils/clickable_text.dart';
import 'package:wallet_app/utils/styles.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/signup_screen.dart';
import 'package:wallet_app/utils/mini_text.dart';
import 'package:wallet_app/utils/welcome_%20message.dart';
import '../utils/socialButoons.dart';
import '../utils/textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0 , 50 , 0, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
                  child: WelcomeMessage(text: 'Welcome Back\n To Mabank Wallet')
                ),
                const SizedBox(height: 30),
                Mini_message(text: 'Login with'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(buttonText: 'Google',
                        imagePath:  'images/google.svg',
                        textColor: colors.active_text,
                        buttonColor: Colors.white, onPressed: () {}),
                    const SizedBox(width: 16),
                    SocialButton(buttonText: 'Facebook',
                        imagePath: 'images/Facebook.svg',
                        textColor: Colors.white,
                        buttonColor: colors.facebook_button,
                        onPressed: (){}),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 20),
                  child: CustomTextField(
                    hintText: 'Username',
                    icon: Iconsax.profile_add,
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 20),
                  child: TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF2F2F2),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Color(0xFF828282)),
                      prefixIcon: const Icon(
                        Iconsax.key_square,
                        color: colors.cardcolor2,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility : Icons.visibility_off,
                          color: colors.cardcolor2,
                        ), onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                      },
                    ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                  ),
                ),
                ),
                const SizedBox(height: 16),
                Buttons(text: 'Login',
                    backgroundColor: colors.button_color,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));// Handle Google signup
                  },),
                const SizedBox(height: 10,),
                RichTextLabel(text1: 'Don\'t have an account yet? ',
                    text2: 'Register',
                    style1: const TextStyle(
                      color: Color(0xff828282),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  style2: const TextStyle(
                    color: colors.richtext_color,
                    fontSize: 14,
                  fontWeight: FontWeight.w500,),
                  onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                },),
      ],
            ),
          ),
        ),
      ),
    );
  }

}





