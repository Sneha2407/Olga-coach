import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olga_coach/forgotpass.dart';
import 'package:olga_coach/registeras.dart';
import 'forgotpass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Login',
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
          ),
        ),
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(Icons.notifications),
        ],
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/olga.png", width: 50, height: 50),
                Text('Olga', style: GoogleFonts.poppins(fontSize: 25)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('images/hi.png'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Use your Registered Email Id to login',
              style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffB50000), width: 2.0),
                ),
                border: const OutlineInputBorder(),
                // labelText: 'Email',
                hintText: 'Email',
                hintStyle: GoogleFonts.poppins(),
                hoverColor: const Color(0xffB50000),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffB50000), width: 2.0),
                ),
                hintText: 'Password',
                hintStyle: GoogleFonts.poppins(),
                border: const OutlineInputBorder(),
                // hintText: 'Password',
                hoverColor: const Color(0xffB50000),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: const Color(0xffB50000),
                    value: true,
                    onChanged: (value) {}),
                Text(
                  'Remember me',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 72, 62, 62)),
                ),
                
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPass()));
                    },
                    child: Text('Forgot Password?', style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 136, 9, 9),
                      fontWeight: FontWeight.bold),)),
                // Text(
                //   'Forgot Password?',
                //   style: GoogleFonts.poppins(
                //       fontSize: 13,
                //       color: const Color.fromARGB(255, 136, 9, 9),
                //       fontWeight: FontWeight.bold),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 28, 28, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(100, 50)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffB50000)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.poppins(fontSize: 20),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 72, 62, 62)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterAs()));
                    },
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: const Color.fromARGB(255, 136, 9, 9),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Text(
                  '  OR  ',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 72, 62, 62)),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color(0xffF3F3F3),
                  child: Image.asset('icons/google.png', width: 70, height: 40),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: const Color(0xffF3F3F3),
                  child: Image.asset(
                    'icons/facebook.png',
                    width: 70,
                    height: 40,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'By continuing you agree to Olgas Terms of Service and acknowledge that you have read our privacy policy',
              style: GoogleFonts.poppins(
                  fontSize: 13, color: const Color.fromARGB(255, 72, 62, 62)),
            )
          ],
        ),
      ),
    );
  }
}
