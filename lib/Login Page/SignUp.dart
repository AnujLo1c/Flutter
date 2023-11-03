import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _akey = GlobalKey<FormState>();
  TextEditingController _name=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _phone=TextEditingController();
  TextEditingController _pass=TextEditingController();
  TextEditingController _cpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let's Get Started",
                    style:
                        GoogleFonts.autourOne(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    "Create an account to get connected",
                    style: GoogleFonts.abel(color: Colors.black26, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _akey,
                      child: Column(
                    children: [
                      TextFormField(
                        controller: _name,
                        keyboardType: TextInputType.emailAddress,
                        // cursorHeight: 10,
                        decoration: const InputDecoration(
                            labelText: " Name",
                            prefixIcon: Icon(Icons.person_2_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,

                        // cursorHeight: 10,
                        decoration: const InputDecoration(
                            labelText: " Email",
                            prefixIcon: Icon(Icons.email_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
controller: _phone,
                        // cursorHeight: 10,
                        decoration: const InputDecoration(
                            labelText: " Phone",
                            prefixIcon: Icon(Icons.phone_android_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
controller: _pass,
                        // cursorHeight: 10,
                        decoration: const InputDecoration(
                            labelText: " Password",
                            prefixIcon: Icon(Icons.password_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
controller: _cpass,
                        // cursorHeight: 10,
                        decoration: const InputDecoration(
                            labelText: " Confirm Password",
                            prefixIcon: Icon(Icons.password_outlined),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_akey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Creating...")),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue.shade900),
                            elevation: 15,
                          ),
                          child: const Text("CREATE"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: GoogleFonts.abel(
                                color: Colors.black54, fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Login here",
                              style: TextStyle(color: Colors.blue.shade800),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
