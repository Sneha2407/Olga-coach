import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olga_coach/LoginPage.dart';

class RegisterAs extends StatefulWidget {
  const RegisterAs({super.key});

  @override
  State<RegisterAs> createState() => _RegisterAsState();
}

class _RegisterAsState extends State<RegisterAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Register as',
          
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
          ),
        ),
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(
            //   color: Colors.grey,
            //   thickness: 1,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/olga.png", width: 50, height: 50),
                Text('Olga', style: GoogleFonts.poppins(fontSize: 25)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Register yourself as.',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          //
                          Image.asset('icons/user.png'),
                          SizedBox(
                            width: 10,),
                          Text("User",
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black),
                          ),
                          const Spacer(),
                          Radio(
                              value: "radio value",
                              groupValue: "group value",
                              onChanged: (value) {
                                print(value); //selected value
                              })
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset('icons/coach.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Coach",
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black),
                          ),
                          const Spacer(),
                          Radio(
                              value: "radio value",
                              groupValue: "group value",
                              onChanged: (value) {
                                print(value); //selected value
                              })
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image.asset('icons/company.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Company",
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black),
                          ),
                          const Spacer(),
                          Radio(
                              value: "radio value",
                              groupValue: "group value",
                              onChanged: (value) {
                                print(value);
                                //selected value
                              })
                        ],
                      ),
                    ),
                  ],
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        'SUBMIT',
                        style: GoogleFonts.poppins(fontSize: 20),
                      )),
                ],
              ),
            )
            // TextButton(
            //               onPressed: () {},
            //               child: const Text(
            //                 "                   SUBMIT                  ",
            //                 style: TextStyle(
            //                     fontFamily: "Poppins",
            //                     fontSize: 16,
            //                     color: Colors.white,
            //                     letterSpacing: 0,
            //                     fontWeight: FontWeight.w500),
            //               ),
            //                style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //         RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(18.0),
            //         ),
            //       ),))
          ],
        ),
      ),
    );
  }
}
