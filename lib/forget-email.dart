import 'package:flutter/material.dart';

class Forget_Email extends StatelessWidget {
  const Forget_Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30,60,30,0),
            child: Column(
              children: [
                Image.asset('lib/Email.png'),

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
                    child: const Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: 'Email',
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
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
                    onPressed: () {
                     /* Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPScreen(verificationID: verificationID)),);
                      */
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
