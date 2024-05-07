import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileAppBar extends AppBar {
  MobileAppBar({super.key});

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFFFFF),
      title: Text.rich(
        TextSpan(
            style: GoogleFonts.josefinSans().copyWith(fontSize: 20),
            children: const [
              TextSpan(
                text: "team",
              ),
              TextSpan(text: ".", style: TextStyle(color: Color(0xff794CFF))),
              TextSpan(
                text: "flow",
              ),
            ]),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.menu,
              ),
              Text(
                "MENU",
                style: GoogleFonts.inter()
                    .copyWith(fontSize: 8, color: const Color(0xff4E5A65)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GetContainer extends StatelessWidget {
  List<String> text = [
    "name@yourcompany.com",
    "Try it free",
    "View more benefits",
    "Get started free"
  ];
  List<Color> borderColor = [
    const Color(0xffE1E5EA),
    const Color(0xff7259FA),
    const Color(0xffECE5FF),
    const Color(0xff7259FA)
  ];
  List<Color> textColor = [
    const Color(0xff97A5B5),
    const Color(0xffFFFFFF),
    const Color(0xff7259FA),
    const Color(0xffFFFFFF)
  ];
  List contColor = [
    const Color(0xffFFFFFF),
    const Color(0xff794CFF),
    const Color(0xffECE5FF),
    const Color(0xff794CFF)
  ];
  int i;
  GetContainer({
    required this.i,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: contColor[i],
          border: Border.all(color: borderColor[i]),
          borderRadius: BorderRadius.circular(5)),
      child: IconButton(
        onPressed: () {},
        icon: Text(
          textAlign: TextAlign.center,
          text[i],
          style:
              GoogleFonts.inter().copyWith(color: textColor[i], fontSize: 16),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          border: const Border(
            bottom: BorderSide(color: Color(0xff794CFF), width: 3),
          ),
          color: const Color(0xffF6F3FC),
          borderRadius: BorderRadius.circular(2)),
      child: Column(
        children: [
          Text(
            "Survey your team",
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff35414B),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Powerful questions that get to the heart of how team members really feel.",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff4E5A65),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class SecondContainer extends StatelessWidget {
  String title;
  String info;
  double number;
  SecondContainer(
      {required this.number,
      required this.title,
      required this.info,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 23.5),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff35414B),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: number,
          ),
          Text(
            info,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff4E5A65),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class ThreeContainer extends StatelessWidget {
  List icons = ["first.png", "second.png", "third.png", "fourth.png"];
  List title = [
    "Team Surveys & Reports",
    "Collaborative 1:1",
    "Learning Center",
    "Jorge Robertson"
  ];
  List info = [
    "Short, anonymous surveys track your team’s needs weekly so you can focus.",
    "Build relationships by planning 1-on-1s and start meetings.",
    "Quickly get solutions tailored to your personal challenges from the manager.",
    "CS at Google"
  ];
  int i;
  ThreeContainer({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Image.asset(
            "assets/icons/${icons[i]}",
            height: 48,
            width: 48,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title[i],
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff35414B),
                fontWeight: FontWeight.w600,
                fontSize: i == 3 ? 13 : 18),
          ),
          Text(
            info[i],
            textAlign: TextAlign.center,
            style: GoogleFonts.inter().copyWith(
                color: const Color(0xff35414B),
                fontWeight: FontWeight.w400,
                fontSize: i == 3 ? 13 : 18),
          ),
        ],
      ),
    );
  }
}
