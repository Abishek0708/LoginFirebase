import 'package:app_login/dashboard-screen.dart';
import 'package:app_login/forget-email.dart';
import 'package:app_login/forget-phone.dart';
import 'package:app_login/signup-page.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  bool textvisible = true;
  final _loginformkey = GlobalKey<FormState>();
  TextEditingController Emailorphone = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "lib/login.png",
                    height: 150.0,
                  ),
                  const Text(
                    'Welcome Back,',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Form(
                    key: _loginformkey,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: Emailorphone,
                              validator: (Emailorphone){
                                if (Emailorphone!.isEmpty){
                                  return 'Enter your Email';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: 'Email',
                                hintText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: Password,
                              keyboardType: TextInputType.number,
                              obscureText: textvisible,
                              validator: (Password){
                                if (Password!.isEmpty){
                                  return 'Enter your Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.fingerprint),
                                labelText: 'password',
                                hintText: 'password',
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        textvisible = !textvisible;
                                      });
                                    },
                                    icon: textvisible ? const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,) :

                                    const Icon(Icons.visibility_off,
                                      color: Colors.grey,
                                    )
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          Container(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                const Text('Make Selection!',
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const Text(
                                                  'Select one of the options given below to reset your password',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight
                                                        .normal,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(height: 30.0,),

                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Forget_Email()));
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(
                                                        20.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      color: Colors.grey
                                                          .shade200,
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Icon(Icons
                                                            .mail_outline_rounded,
                                                          size: 60.0,),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text('E-Mail'),
                                                            Text(
                                                                'Reset Via Mail Verification'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                const SizedBox(height: 10,),

                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Forget_Phone()));
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(
                                                        20.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      color: Colors.grey
                                                          .shade200,
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Icon(Icons.phone,
                                                          size: 60.0,),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text('Mobile'),
                                                            Text(
                                                                'Reset Via Mobile Verification'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),


                                              ],
                                            ),
                                          ),
                                    );
                                  },
                                  child: const Text('Forget Password?')
                              ),
                            ),

                            const SizedBox(
                              height: 20.0,
                            ),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                  side: const BorderSide(color: Color(0xFF272727),),
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                ),
                                onPressed: () {
                                  if (_loginformkey.currentState!.validate()){}
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const dashboardscreen()));
                                },
                                child: Text('login'.toUpperCase()),
                              ),
                            ),

                            const SizedBox(
                              height: 20.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.grey[400],
                                    ),
                                  ),

                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text('Or continue with'),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.grey[400],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "lib/google.png",height: 40,),
                                ),

                                const SizedBox(width: 4),

                                Container(
                                  child: Image.asset(
                                    "lib/facebook.png",height: 40,),
                                )
                              ],
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?",
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                const SizedBox(width: 4),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) =>
                                            const signupscreen()));
                                  },
                                  child: const Text('Signup',
                                      style: TextStyle(color: Colors.blue,
                                        fontWeight: FontWeight.bold,)),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),)
          ,
        )
        ,
      )
      ,
    );
  }
}
