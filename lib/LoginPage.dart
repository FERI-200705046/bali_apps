import 'dart:ui';

import 'package:bali_apps/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bali_apps/components/button.dart';
import 'package:bali_apps/components/search_button.dart';
import 'package:bali_apps/components/square_tile.dart';
import 'package:bali_apps/components/textField.dart';
import 'package:bali_apps/LoginPage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(20)),
              //welcome back
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset("images/gambar1.png"),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 25)),
                          Text(
                            'Log in',
                            style: GoogleFonts.averageSans(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 72),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Email / Phone Number',
                obscuretext: false,
              ),

              SizedBox(
                height: 10,
              ),

              //password texfield

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscuretext: true,
              ),

              SizedBox(height: 14),

              SizedBox(height: 40),
              //sig in

              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return homePages();
                    }),
                  );
                },
                nameBtn: "Login",
              ), //link next pages
              //forgot password
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN UP NOW",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    )
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
