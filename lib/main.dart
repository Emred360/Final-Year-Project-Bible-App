import 'package:hive/hive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_run/Bible/select_book.dart';
import 'package:testing_run/colors.dart';
import 'package:testing_run/drawer_menu.dart';
import 'package:testing_run/general_settings.dart';
import 'package:testing_run/user_accounts/create_account.dart';
import 'package:testing_run/new_note.dart';
import 'package:testing_run/notes.dart';
import 'package:testing_run/new_message.dart';
import 'package:testing_run/user_accounts/edit_profile.dart';
import 'package:testing_run/user_accounts/profile_pager.dart';
import 'package:testing_run/user_accounts/signin.dart';

void main() async {
  // Hive.registerAdapter(
  //   InventoryAdapter(),
  // );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // device: 58dde0e6

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bibnote',
      theme: ThemeData(),
      home: MyHomePage(
        title: 'Flutter Mobile App',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kprimaryColor,
          elevation: 5.0,
          centerTitle: true,
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
          bottom: TabBar(
            tabs: [
              Text("NOTES"),
              Text("MESSAGE"),
            ],
            labelPadding: EdgeInsets.symmetric(vertical: 14.0),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.local_activity),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllNotes(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewNote(),
                            ),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.local_activity),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectBooks(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/svg/home (1).svg"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewMessage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage1(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DrawerMenu(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.perm_contact_cal,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.format_line_spacing_outlined,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GeneralSettings(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.follow_the_signs_outlined,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            Text("Hellllllllo")
          ],
        ),
      ),
    );
  }
}
