// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'signup.dart';
import './home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
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
        // appBar: AppBar(
        //   title: Text('KASHTKAR'),
        //centerTitle: true,
        // ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/plant.PNG',
                  height: 200,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome Back,',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 21, 77, 50),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Discover a better way for Modren Farmer.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Freehand',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eamil*',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'Enter Email',
                          suffixIcon: Icon(
                            Icons.alternate_email,
                            color: Colors.teal,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ' Enter Email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Password*',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: visible,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: 'Enter Password',
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
                            return 'Enter Password';
                          }
                          return null;
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Forget Password ?'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            var data = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);

                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setString('id', data.user!.uid);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          } catch (ex) {
                            print('AUTH EXECPTION:$ex');
                          }
                          if (formKey.currentState!.validate()) {}
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          minimumSize: Size.fromHeight(60),
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New Kashtkar member?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text('Sign Up'),
                    )
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
