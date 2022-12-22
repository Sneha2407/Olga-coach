import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  
  @override
  Widget build(BuildContext context) {
    int navind = 0;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset('icons/logo.png')
          ),
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset('icons/menu.png'),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const [
            Icon(
              Icons.person_outline_sharp,
              color: Colors.black,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Text('Your Dashboard',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 238),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xffB50000),
                          ),
                          indicatorColor: const Color(0xffB50000),
                          labelColor: Colors.white,
                          unselectedLabelColor: const Color(0xff898A8D),
                          tabs: const [
                            Tab(
                              text: 'My Clients',
                            ),
                            Tab(
                              text: 'My Self',
                            ),
                            Tab(
                              text: 'My Work',
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  CircularPercentIndicator(
                                      radius: 50,
                                      lineWidth: 10.0,
                                      percent: 0.5,
                                      progressColor: const Color(0xff67C23A),
                                      backgroundColor: const Color(0xffF3F3F3),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      center: Text('50%',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff67C23A)))),
                                  const SizedBox(height: 5),
                                  Text('Hope Barometer',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: const Color(0xff898A8D))),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  CircularPercentIndicator(
                                      radius: 50,
                                      lineWidth: 10.0,
                                      percent: 0.6,
                                      progressColor: const Color(0xffE6A23C),
                                      backgroundColor: const Color(0xffF3F3F3),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      center: Text('60%',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xffE6A23C)))),
                                  const SizedBox(height: 5),
                                  Text('Goal Started',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: const Color(0xff898A8D))),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  CircularPercentIndicator(
                                      radius: 50,
                                      lineWidth: 10.0,
                                      percent: 0.7,
                                      progressColor: const Color(0xffF56C6C),
                                      backgroundColor: const Color(0xffF3F3F3),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      center: Text('70%',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xffF56C6C)))),
                                  const SizedBox(height: 5),
                                  Text('Goal Achieved',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: const Color(0xff898A8D))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text('Details',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Flexible(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 190,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2,
                    ),
                    itemCount: 40,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // color: Colors.amber,
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("images/Frame 7.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)
                                      //more than 50% of width makes circle
                                      ),
                                  child: Image.asset('icons/round1.png'),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'My Plans',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: const Color(0xff754403)),
                                ),
                                const SizedBox(height: 50),
                                Row(
                                  children: [
                                    Text(
                                      'Vision Board',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '60%',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xffB50000),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Plans',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '4',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navind,
          selectedItemColor: const Color(0xffB50000),
          onTap: (value) {
            setState(() {
              navind = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    navind = 1;
                  },
                  icon: Image.asset('icons/dashb.png')),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: Image.asset('icons/team.png')),
              label: 'My Team',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: Image.asset('icons/coach1.png')),
              label: 'My Coach',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: Image.asset('icons/profile.png')),
              label: 'My Profile',
            ),
          ],
        ),
      ),
    );
  }
}
// If you want to allow GridView to take up all remaining space inside Column use Flexible.

// Column(
//   children: <Widget>[
//     Flexible(
//       child: GridView(...),
//     )
//   ],
// )
// If you want to limit your GridView to certain height, you can use SizedBox.

// Column(
//   children: <Widget>[
//     SizedBox(
//       height: 200, // constrain height
//       child: GridView(...),
//     )
//   ],
// )
// If your GridView is small, you may try shrinkWrap property on it.

// Column(
//   children: <Widget>[
//     GridView(
//       shrinkWrap: true, // use it
//     )
//   ],
// )
