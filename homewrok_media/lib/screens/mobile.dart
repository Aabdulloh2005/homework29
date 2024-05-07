import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homewrok_media/classes/widgets.dart';

class MobileVersion extends StatelessWidget {
  const MobileVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: MobileAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 115, vertical: 10),
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: const Color(0xffF2F9EB)),
                  onPressed: () {},
                  icon: Row(
                    children: [
                      Text(
                        "Get account of \$59",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 13,
                          color: const Color(0xff35414B),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 33,
                ),
                child: Column(
                  children: [
                    Text(
                      "Manage the team everyone wants to be on",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: const Color(0xff35414B)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff35414B)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GetContainer(i: 0),
                    GetContainer(i: 1),
                  ],
                ),
              ),
              Image.asset("assets/images/img1.png"),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "TRUSTED BY OVER",
                      style: GoogleFonts.inter(
                          color: const Color(0xff4E5A65), fontSize: 11),
                    ),
                    TextSpan(
                      text: " 10.000+ ",
                      style: GoogleFonts.inter(
                          color: const Color(0xff4E5A65),
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: "WORLD’S BEST TEAMS",
                        style: GoogleFonts.inter(
                            color: const Color(0xff4E5A65), fontSize: 11))
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/images/company.png",
                width: 350,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xffFBFAFE),
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Color(0xffF0EBFA)))),
                child: Column(
                  children: [
                    Image.asset("assets/images/img2.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    const FirstContainer(),
                    SecondContainer(
                      number: 3,
                      title: "Resolve issues quickly",
                      info:
                          "Anonymous messaging that connects managers and employees.",
                    ),
                    SecondContainer(
                        number: 3,
                        title: "Plan your 1-on-1s",
                        info:
                            "Plan meetings together and give a stakeemployees and teams."),
                    SecondContainer(
                        number: 3,
                        title: "Track your progress",
                        info:
                            "Easy-to-read reports and sharable results help managers and teams.")
                  ],
                ),
              ),
              Text(
                "Make your work easier",
                style: GoogleFonts.inter()
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              ThreeContainer(i: 0),
              ThreeContainer(i: 1),
              ThreeContainer(i: 2),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: GetContainer(i: 2),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: Color(0xffF0EBFA))),
                  color: Color(0xffFBFAFE),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/graph.png"),
                    SecondContainer(
                        number: 20,
                        title: "We work how you work everyday",
                        info:
                            "Since the easiest things to use actually get used, we adapts to the way your team works – not the other way around."),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: GetContainer(i: 3)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
                child: SecondContainer(
                    number: 20,
                    title: "Why customers love working with us",
                    info:
                        "“It's amazing what has helped me learn about my team. I don't worry about blindspots anymore, and 1-on-1s have never been more productive. The team loves it.”"),
              ),
              ThreeContainer(i: 3),
              Image.asset("assets/images/download.png"),
              const SizedBox(
                height: 60,
              ),
              Image.asset("assets/images/bottom.png"),
            ],
          ),
        ),
      ),
    );
  }
}
