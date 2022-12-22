import 'main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyPlans extends StatefulWidget {
  const MyPlans({super.key});

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Plans',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
                // margin: const EdgeInsets.only(top: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 30,
                      lineWidth: 9.0,
                      percent: 0.7,
                      center: const Text("70.0%"),
                      progressColor: const Color(0xffB50000),
                      backgroundColor: const Color(0xffD9D9D9),
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Overall Progress',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('You have achieved 70% of your Plans',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: const Color(0xff898A8D))),
                      ],
                    )
                  ],
                )),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(10),
                // border: Border(bottom: BorderSide(color: Color(0xffB50000),width: 20))
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff898A8D),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Work Plan',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    'Be in a job that earns \$90,000 pa, by 2023',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff898A8D))),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        CircularPercentIndicator(
                          radius: 30,
                          lineWidth: 5.0,
                          percent: 0.7,
                          center: Text(
                            "70.0%",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xffF56C6C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          progressColor: const Color(0xffF56C6C),
                          backgroundColor: const Color(0xffD9D9D9),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('icons/flag.png'),
                        const SizedBox(width: 10),
                        Text(
                          'Complete my electricians course',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('icons/brain.png'),
                        const SizedBox(width: 10),
                        Text(
                          'Stay focused (EQ skill)',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Color(0xffB50000),
                    decoration: const BoxDecoration(
                      color: Color(0xffB50000),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),

                    width: double.infinity,

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Know more',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
             Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(10),
                // border: Border(bottom: BorderSide(color: Color(0xffB50000),width: 20))
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff898A8D),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Career Plan',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    'Be in a job that earns \$90,000 pa, by 2023',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff898A8D))),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        CircularPercentIndicator(
                          radius: 30,
                          lineWidth: 5.0,
                          percent: 0.7,
                          center: Text(
                            "70.0%",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xffF56C6C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          progressColor: const Color(0xffF56C6C),
                          backgroundColor: const Color(0xffD9D9D9),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('icons/flag.png'),
                        const SizedBox(width: 10),
                        Text(
                          'Complete my electricians course',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('icons/brain.png'),
                        const SizedBox(width: 10),
                        Text(
                          'Stay focused (EQ skill)',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Color(0xffB50000),
                    decoration: const BoxDecoration(
                      color: Color(0xffB50000),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),

                    width: double.infinity,

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Know more',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
