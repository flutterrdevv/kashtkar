// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_app/screens/home.dart';
import 'package:second_app/screens/login.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool visible = true;
  void toggle() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                Image.asset(
                  'assets/images/logo_kasthkar.png',
                  width: double.maxFinite,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Create New Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 21, 77, 50),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enjoy Excellent features as a Modren Farmer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name *',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'Enter Your Full Name',
                          suffixIcon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.teal,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                        ),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Name is reduired';
                          }
                          return null;
                        }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Email *',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'Andy@gmail.com',
                          suffixIcon: Icon(
                            Icons.alternate_email,
                            color: Colors.teal,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                        ),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Enter email';
                          }
                          return null;
                        }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Password *',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: visible,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: '*********',
                          isDense: true,
                          suffixIcon: IconButton(
                            icon: visible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            color: Colors.teal,
                            onPressed: () {
                              setState(() {
                                toggle();
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else if (value.length < 6) {
                            return "Password should be atleast 6 characters";
                          } else if (value.length > 15) {
                            return "Password should not be greater than 15 characters";
                          } else
                            return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size.fromHeight(60),
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ));
                        } catch (ex) {
                          print('AUTH EXCEPTION: $ex');
                        }
                        if (formKey.currentState!.validate()) {}
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have a Kashtkar member?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text('Sign in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
