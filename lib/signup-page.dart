import 'package:app_login/Auth-Manage.dart';
import 'package:app_login/login-page.dart';
import 'package:flutter/material.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {

  bool textvisible = true;

  final _signupformkey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController usermobile = TextEditingController();
  TextEditingController userpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "lib/login.png",
                    height: 150.0,
                  ),
                  const Text(
                    'Get on Board!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Create your profile to start your journey.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Form(
                    key: _signupformkey,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: username,
                              validator: (Fullname) {
                                if (Fullname == null ||Fullname.trim().isEmpty || Fullname.trim().length > 20) {
                                  return 'Enter your full name';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: 'Full Name',
                                hintText: 'Full Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: useremail,
                              validator: (usermail) {
                                if (usermail == null ||
                                    usermail.trim().isEmpty ||
                                    !usermail.contains('@')) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                labelText: 'Email',
                                hintText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: usermobile,
                              validator: (number) {
                                if (number == null || number.trim().length != 10) {
                                  return 'Enter 10 digit mobile number';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                labelText: 'Mobile No',
                                hintText: 'Mobile No',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: textvisible,
                              controller: userpass,
                              keyboardType: TextInputType.text,
                              validator: (pass) {
                                if (pass == null || pass.trim().length < 6) {
                                  return 'Password must be at least 6 characters long.';
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
                                    icon: textvisible ?
                                    const Icon(
                                        Icons.remove_red_eye_sharp
                                    ) :
                                    const Icon(
                                      Icons.visibility_off,color: Colors.grey,
                                    )
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
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
                                onPressed: (){
                                 if (_signupformkey.currentState!.validate()){
                                  AuthManage().signUp(useremail.text.trim(), userpass.text.trim());
                                  print("Validate");
                                  }else {
                                   print("Not Validate");
                                 }
                                },
                                child: Text('Signup'.toUpperCase()),
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
                                    "lib/google.png", height: 40,),
                                ),

                                const SizedBox(width: 4),

                                Container(
                                  child: Image.asset(
                                    "lib/facebook.png", height: 40,),
                                )
                              ],
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?",
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                const SizedBox(width: 4),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => const loginpage()));
                                  },
                                  child: const Text('Login',
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
            ),
          ),
        ),
      ),
    );
  }
}
