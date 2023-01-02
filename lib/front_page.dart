// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg-login.png'), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 24,
                  spreadRadius: 16,
                  color: Colors.black.withOpacity(0.2))
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
                child: Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1.5, color: Colors.white.withOpacity(0.2))),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'welcome ',
                              style: TextStyle(
                                  color:  Color(0xFF422bc5),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'back',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Welcome! please login to continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF59585f)
                        ),
                        ),
                        
                        SizedBox(
                          height: 15,
                        ),
                        Text('Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 6),
                        LoginFormField(
                          hint: 'Enter your email address',
                        ),
                        SizedBox(height: 10),
                        Text('password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 6),
                        LoginFormField(hint: 'Enter your password'),
                        SizedBox(height: 30),

                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 12,
                              width: 20,
                              child: Checkbox(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: false, onChanged: null),
                            ),
                            
                            SizedBox(
                              width: 10,
                            ),
                            Text('remember me',
                            style: TextStyle(
                              color: Color(0xFF59585f)
                            ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 125,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xFF4a3fe4),
                                      Color(0xFF422bc5)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                'Log in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                'sign up',
                                style: TextStyle(
                                    color: Color(0xFF1D1CCF),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 40),

                        Text('forgot pasword?',
                        style: TextStyle(
                          color: Color(0xFF4a3fe4),
                        ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
