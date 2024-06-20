import 'dart:developer';
import 'package:app_login/dashboard-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.verificationID});
   final String verificationID;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController OTPcontroller = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,0,30,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CO\nDE',
                style: GoogleFonts.montserrat(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('verification'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 40,),
              const Text('Enter the verification code sent to your phone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                  controller: OTPcontroller,
                  decoration: InputDecoration(
                      hintText:"OTP",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                  ),
              ),
              const SizedBox(height: 20,),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async{
                    try{
                      final cred = PhoneAuthProvider.credential(verificationId: widget.verificationID, smsCode: OTPcontroller.text);
                      await FirebaseAuth.instance.signInWithCredential(cred);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const dashboardscreen(),));
                    }catch (e){
                      log(e.toString());
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(content: Text('Invalid OTP. Please try again.')),
                      );
                     }

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
    );
  }
}
