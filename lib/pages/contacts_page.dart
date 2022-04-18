import 'package:flutter/material.dart';

class contacts_page extends StatefulWidget {
  const contacts_page({Key? key}) : super(key: key);

  @override
  State<contacts_page> createState() => _contacts_pageState();
}

class _contacts_pageState extends State<contacts_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Contacts'),
      ),
    );
  }
}
