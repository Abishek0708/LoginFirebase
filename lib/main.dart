import 'package:app_login/login-page.dart';
import 'package:app_login/signup-page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: const FirebaseOptions(
     apiKey: 'AIzaSyAfGxDtOo0NcXyX0yD5XKlWvlGPWorQitU',
     appId: '1:257575359358:android:653323e1ad767a2ab4992f',
     messagingSenderId: '257575359358',
     projectId: 'app-login-3ae17',
    ),
   );
  runApp(const first());
}

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: second(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Padding(
          padding: const EdgeInsets.all(50.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("lib/welcome.png"),

              const Column(
                children: [
                  Text('Build Awesome Apps',style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  Text("Let's put your creativity on the development highway",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const loginpage()));},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                          foregroundColor: const Color(0xFF272727),
                          side: const BorderSide(color: Color(0xFF272727),),
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        child: Text('Login'.toUpperCase()),
                      )
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: ElevatedButton(
                        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const signupscreen()));},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          side: const BorderSide(color: Color(0xFF272727),),
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        child: Text('Signup'.toUpperCase()),
                      )
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
