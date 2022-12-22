import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Forgot Password',
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/olga.png", width: 50, height: 50),
                    Image.asset('images/olga text.png', width: 50, height: 50),
                  ],
                ),
                Text('Did you forgot your password?',
                    style: GoogleFonts.poppins(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    'Enter your registered email. You will receive a verification code ',
                    style: GoogleFonts.poppins(
                        fontSize: 13, color: const Color(0xff2E2E2E))),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffB50000), width: 2.0),
                    ),
                    border: const OutlineInputBorder(),
                    // labelText: 'Email',
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(),
                    hoverColor: const Color(0xffB50000),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset('images/forgot.png', width: 300, height: 300),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 20, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const LoginPage()));
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(100, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffB50000)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'SUBMIT',
                            style: GoogleFonts.poppins(fontSize: 17),
                          )),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(15.0, 20, 15, 0),
                //   child: Column(children: [
                //     Spacer(),
                //     Image.asset('images/olga forgot.png', width: 50, height: 50),
                //     const SizedBox(
                //       height: 10,
                //     ),
                //     ElevatedButton(onPressed: (){},
                //           style:ButtonStyle(
                //             minimumSize: MaterialStateProperty.all<Size>(
                //                 const Size(100, 50)),
                //             backgroundColor: MaterialStateProperty.all<Color>(
                //                 const Color(0xffB50000)),
                //             shape:
                //                 MaterialStateProperty.all<RoundedRectangleBorder>(
                //               RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(25.0),
                //               ),
                //             ),
                //           ),
                //           child: Text(
                //             'LOGIN',
                //             style: GoogleFonts.poppins(fontSize: 17),
                //           ))
                //   ],),
                // )
              ],
            ),
          ),
        ));
  }
}
