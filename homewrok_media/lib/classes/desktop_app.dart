import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget desktopAppBar(List menus) {
  return AppBar(
    surfaceTintColor: Colors.white,
    elevation: 0,
    title: Text(
      "team.flow",
      style: GoogleFonts.josefinSans().copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    actions: [
      for (var i = 0; i < menus.length; i++)
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                menus[i],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                CupertinoIcons.chevron_down,
                size: 12,
                color: Colors.black,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      const SizedBox(width: 20),
      TextButton(
        onPressed: () {},
        child: const Text(
          "Log in",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFECE5FF),
          shape: const RoundedRectangleBorder(),
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
        ),
        child: const Text(
          "Get started free",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF794CFF),
          ),
        ),
      ),
    ],
  );
}
