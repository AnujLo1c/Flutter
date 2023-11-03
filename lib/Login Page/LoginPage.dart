import 'package:flutter/material.dart';
import 'Forgetpass.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final AuthMethods _authMethods=AuthMethods();
  var name = TextEditingController();
  var password = TextEditingController();
  final _fkey = GlobalKey<FormState>();
  var shadowc=MaterialStateColor.resolveWith((states) => Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade50,
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Lottie.asset("assets/lotti/a.json",
                      height: 100,
                      width: 100,
                      repeat: false,
                      alignment: Alignment.center),
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.autourOne(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Login in to existing account",
                  style: GoogleFonts.autourOne(
                    color: Colors.black26,
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                  ),
                ),
                // const SizedBox(height: 10,),
                Form(
                  key: _fkey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: shadowc,spreadRadius: 1,blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: TextFormField(
                            controller: name,

                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              filled: true,
                                fillColor: Colors.white,
                                labelText: "Enter Email",
                                labelStyle: TextStyle(color: Colors.black),
                                prefixIcon: Icon(Icons.person_2_outlined),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue,width: 3),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter something';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow:  [
                                BoxShadow(color: shadowc,spreadRadius: 1,blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: TextFormField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            controller: password,
                            keyboardType: TextInputType.emailAddress,
                            // cursorHeight: 10,

                            decoration: const InputDecoration(
                                labelText: "Enter Password",
                                labelStyle: TextStyle(color: Colors.black),
filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.person_2_outlined),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                                )),
                            validator: (v) {
                              if (v == null || v.isEmpty) {
                                return 'Enter something';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgetpass(),));

                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Align(
                                alignment: Alignment.topRight,
                                // widthFactor: 50,
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                          )),
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_fkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Logging in... ")),
                              );
                            }
                            else{
                              shadowc=MaterialStateColor.resolveWith((states) => Colors.white);
                              setState(() {

                              });
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                            elevation: MaterialStateProperty.resolveWith(
                                    (states) => 10),
                            foregroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                            backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.blue.shade900),
                          ),
                          child: const Text("LOG IN"),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Or connect using",
                        style: TextStyle(color: Colors.black26),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: ElevatedButton(
                              onPressed: () {/*here*/},
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.resolveWith((states) => 10),
                                  foregroundColor:
                                  MaterialStateColor.resolveWith(
                                          (states) => Colors.white),
                                  backgroundColor:
                                  MaterialStateColor.resolveWith(
                                          (states) => Colors.blue.shade900)),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.facebook),
                                  Text(
                                    " Facebook",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  // bool res=await _authMethods.signInWithGoogle();
                                  // if(res){
                                  //    Navigator.pushNamed(context, "/temp");
                                  // }
                                },
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.resolveWith((states) => 10),

                                    foregroundColor:
                                    MaterialStateColor.resolveWith(
                                            (states) => Colors.white),
                                    backgroundColor:
                                    MaterialStateColor.resolveWith(
                                            (states) => Colors.red.shade900)),
                                child: const Row(
                                  children: [
                                    Icon(Icons.g_mobiledata),
                                    Text(
                                      "  Google",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?",),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                          },style: ButtonStyle(foregroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade800)), child: const Text("Sign Up"),),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
