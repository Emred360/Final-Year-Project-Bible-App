import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_run/Bible/book_library.dart';
import 'package:testing_run/Bible/select_chapter.dart';

import 'book_library.dart';

class SelectBooks extends StatefulWidget {
  @override
  _SelectBooksState createState() => _SelectBooksState();
}

class _SelectBooksState extends State<SelectBooks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Select Book"),
          centerTitle: true,
        ),
        body: new ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: allbooks.length,
            itemBuilder: (BuildContext ctxt, int index) {
              // return new ListTile(litems[index]);
              return Container(
                height: 50.0,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color:
                      allbooks[index].booksColor ? Colors.black : Colors.white,
                ),
                margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: TextButton(
                  onPressed: () {
                    print("Book Selected");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectChapter(),
                      ),
                    );
                  },
                  child: new Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 3),
                    child: Text(
                      allbooks[index].booksName,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: allbooks[index].booksColor
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
