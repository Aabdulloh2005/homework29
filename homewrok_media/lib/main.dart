import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homewrok_media/classes/desktop_app.dart';
import 'package:homewrok_media/screens/mobile.dart';

void main() => runApp(TeamFlowApp());

class TeamFlowApp extends StatelessWidget {
  TeamFlowApp({super.key});
  final List<String> menus = [
    "How it Works",
    "Product",
    "Pricing",
    "Resources"
  ];

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: screenW <= 800
            ? const MobileVersion()
            : Scaffold(
                appBar: desktopAppBar(menus),
                body: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Container(
                                height: 35,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F9EB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xff81C43B),
                                      ),
                                      child: const Text(
                                        "Save 90%",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text("Get account of \$59"),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Manage the team everyone wants to be on",
                                style: GoogleFonts.inter().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 64,
                                    color: Color(0xff35414B)),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                                style: GoogleFonts.inter().copyWith(
                                    fontSize: 20, color: Color(0xff4E5A65)),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 80.w),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffE1E5EA),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        child: Expanded(
                                          child: Text(
                                            "name@yourcompany.com",
                                            style: TextStyle(
                                              color: Color(0xff97A5B5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 100,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff794CFF),
                                        ),
                                        child: const Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Try it free",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/desktopStatistic.png",
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 20),
                              Image.asset("assets/images/desktopBottom.png"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                        Container(
                          color: Color(0xffFBFAFE),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 40.0.w,
                                right: 40.0.w,
                                top: 20.w,
                                bottom: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/desktopTimeline.png',
                                  ),
                                ),
                                const Expanded(
                                  child: Column(
                                    children: [
                                      TimeLineSeciton(check: true),
                                      TimeLineSeciton(check: false),
                                      TimeLineSeciton(check: false),
                                      TimeLineSeciton(check: false),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 100),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                          child: const Column(
                            children: [
                              Text(
                                "Make your work easier",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff35414B),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_2.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_3.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_4.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 80),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_1_3.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_1_4.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                  Expanded(
                                    child: EasierSeciton(
                                      image: "assets/images/img_1_5.png",
                                      title: 'Team Surveys & Reports',
                                      desc:
                                          "Short, anonymous surveys track your\nteam’s needs weekly so you can focus.",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
                        Container(
                          color: Color(0xffFBFAFE),
                          padding: EdgeInsets.only(
                            top: 20.w,
                            bottom: 20.w,
                            right: 40.w,
                            left: 40.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "We work how you\nwork everyday",
                                    style: TextStyle(
                                      color: Color(0xff35414B),
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Text(
                                      "Since the easiest things to use actually get used, we\nadapts to the way your team works – not the other\nway around.",
                                      style: TextStyle(
                                        color: Color(0xff4E5A65),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff796EFF),
                                    ),
                                    child: const Text(
                                      "Get started free",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Image.asset(
                                  "assets/images/desktopGraph.png",
                                  width: 500,
                                  height: 500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              "Why customers love\nworking with us",
                              style: TextStyle(
                                color: Color(0xff35414B),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "“It's amazing what has helped me learn about my team.\nI don't worry about blindspots anymore, and 1-on-1s have never\nbeen more productive. The team loves it.”",
                                style: TextStyle(
                                  color: Color(0xff4E5A65),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 40.0.w, right: 40.0.w),
                              child: const Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: CustomersSection()),
                                    Expanded(child: CustomersSection()),
                                    Expanded(child: CustomersSection()),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 40.0.w, right: 40.0.w, top: 10.0.w),
                              child: Image.asset("assets/images/desktopGoogle.png"),
                            )
                          ],
                        ),

                        ///[footer]
                        const SizedBox(height: 100),

                        Image.asset("assets/images/desktopFooter.png"),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class CustomersSection extends StatelessWidget {
  const CustomersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset(
              "assets/images/img_6.png",
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jorje Robertson",
                style: TextStyle(
                  color: Color(0xff35414B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Inter",
                ),
              ),
              Text(
                "CS At Google",
                style: TextStyle(
                  color: Color(0xff4E5A65),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class EasierSeciton extends StatelessWidget {
  const EasierSeciton({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });
  final String image;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 60,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff35414B)),
          ),
        ),
        Text(
          desc,
          style: const TextStyle(
            color: Color(0xff4E5A65),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class TimeLineSeciton extends StatelessWidget {
  const TimeLineSeciton({
    super.key,
    required this.check,
  });
  final bool check;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              check ? const EdgeInsets.only(left: 10) : const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: check ? const Color(0xff794CFF) : null,
          ),
          child: Container(
            decoration:
                BoxDecoration(color: check ? const Color(0xffF6F3FC) : null),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Survey your team",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff35414B),
                    ),
                  ),
                  Text(
                    "Powerful questions that get to the heart\nof how team members really feel.",
                    style: TextStyle(
                      color: Color(0xff4E5A65),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
