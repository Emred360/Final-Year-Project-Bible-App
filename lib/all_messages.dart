import 'package:flutter/material.dart';
import 'dart:io';

import 'package:hive/hive.dart';

Widget message(BuildContext context) {
  return ListView.builder(
    itemCount: 34,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        child: Card(
          //<-- Card widget
          child: ListTile(
            onTap: () {},
            leading: Icon(
              Icons.delete,
            ),
            title: Text('titles[index]'),
            trailing: Checkbox(value: true, onChanged: (s) {}),
            subtitle: Text(
              'In the beginning, God created the and the earth',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      );
    },
  );
}
