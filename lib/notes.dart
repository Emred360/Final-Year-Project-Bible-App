import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_run/all_notes.dart';
import 'package:testing_run/all_messages.dart';
import 'package:testing_run/main.dart';

import 'colors.dart';

class AllNotes extends StatefulWidget {
  @override
  _AllNotesState createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 10,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: kprimaryColor,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: kprimaryColor,
        child: Container(
          height: 50,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SvgPicture.asset(
              //   "assets/svg/menu.svg",
              //   color: Colors.white,
              // ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.share_rounded,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.chrome_reader_mode,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Bib",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: "note",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              print("Search button pressed");
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TabBar(
                    labelColor: Colors.blue,
                    indicatorPadding: EdgeInsets.all(6.0),
                    tabs: [
                      Tab(text: "NOTES"),
                      Tab(
                        text: "MESSAGES",
                      ),
                    ],
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .735,
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 4.0),
                      child: TabBarView(
                        children: [
                          notes(context),
                          message(context),
                        ],
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
