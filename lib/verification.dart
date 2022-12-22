import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Verification',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("images/olga.png", width: 50, height: 50),
                  Image.asset('images/olga text.png', width: 50, height: 50),
                ],
              ),
            ),
            Text('Verify your email', style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            Text('Enter the OTP sent to your registered mail',
                style: GoogleFonts.poppins(
                    fontSize: 13, color: const Color(0xff2E2E2E))),
            // TextField(
            //   decoration: InputDecoration(
            //     focusedBorder: const OutlineInputBorder(
            //       borderSide: BorderSide(color: Color(0xffB50000), width: 2.0),
            //     ),
            //     hintText: 'Enter OTP',
            //     hintStyle:
            //         GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            // ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 80,
              style: const TextStyle(fontSize: 20),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: $pin");
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Having trouble? ',
                    style: GoogleFonts.poppins(
                        fontSize: 13, color: const Color(0xff2E2E2E))),
                Text('Resend OTP',
                    style: GoogleFonts.poppins(
                        fontSize: 13, color: const Color(0xffB50000))),
              ],
            ),
            const Spacer(),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.poppins(fontSize: 17),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
