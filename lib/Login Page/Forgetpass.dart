import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  final _forgetkey = GlobalKey<FormState>();
  var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Forget\nPassword",
                style: GoogleFonts.autourOne(color: Colors.black, fontSize: 30),
              )),
          const SizedBox(
            height: 50,
          ),
          Form(
            key: _forgetkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.black),
                    )
                  ),

                  //
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
                SizedBox(
                  height: 45,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_forgetkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("... ")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800),
                    child: Text(
                      "VALIDATE",
                      style: GoogleFonts.autourOne(
                          color: Colors.white, fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
