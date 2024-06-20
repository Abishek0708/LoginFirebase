import 'dart:developer';
import 'package:app_login/OTP_SCREEN.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Forget_Phone extends StatefulWidget {
  const Forget_Phone({super.key});

  @override
  State<Forget_Phone> createState() => _Forget_PhoneState();
}

class _Forget_PhoneState extends State<Forget_Phone> {

  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30,60,30,0),
            child: Column(
              children: [
                Image.asset('lib/phone.png'),

                const SizedBox(height: 20,),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Select one of the options given below to reset your password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 20,
                ),

                Form(
                  child: Container(
                    child: Column(
                      children: [
                        TextField(
                          controller:phonecontroller,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'Phone',
                            hintText: 'Phone',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async{

                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: phonecontroller.text,
                        verificationCompleted: (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException error) {
                          log(error.toString());
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Verification Failed: ${error.message}')),
                          );
                        },
                        codeSent: (verificationID, forceResendingToken) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPScreen(verificationID: verificationID),));
                        },
                        codeAutoRetrievalTimeout: (verificationId) {
                          log("Auto Retrieval timeout");
                        },
                      );

                      },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      side: const BorderSide(color: Color(0xFF272727),),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    child: Text('next'.toUpperCase()),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
