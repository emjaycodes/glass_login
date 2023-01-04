// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  color: Colors.white.withOpacity(0.2))
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 24.0, sigmaY: 24.0),
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
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF422bc5),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                              // style: TextStyle(
                              //     color: Color(0xFF422bc5),
                              //     fontSize: 24,
                              //     fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Back',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Welcome! Please login to continue.',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Email',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        LoginFormField(
                          hint: 'Enter your email address',
                        ),
                        SizedBox(height: 10),
                        Text(
                          'password',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        LoginFormField(hint: 'Enter your Password'),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(
                              height: 12,
                              width: 20,
                              child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: false,
                                  onChanged: null),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'remember me',
                              style:
                                  GoogleFonts.poppins(color: Color(0xFF59585f)),
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.indigo.shade700
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          2, 3), // changes position of shadow
                                    ),
                                  ],
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
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.indigo.shade700),
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'sign up',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xFF1D1CCF),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 25),
                        Text(
                          'forgot pasword?',
                          style: GoogleFonts.poppins(
                              color: Color(0xFF4a3fe4),
                              fontWeight: FontWeight.w500),
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
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          fontSize: 12
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
