import 'dart:async';

import 'package:flutter/material.dart';
import 'package:giid/events/lives/advance.dart';
import 'package:giid/events/lives/common.dart';
import 'package:giid/events/lives/pensioner.dart';
import 'package:giid/events/lives3/advance.dart';
import 'package:giid/events/lives3/common.dart';
import 'package:giid/events/lives3/pensioner.dart';

class LiveGuides3 extends StatefulWidget {
  const LiveGuides3({super.key});

  @override
  State<LiveGuides3> createState() => _LiveGuides3State();
}

class _LiveGuides3State extends State<LiveGuides3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LiveGuides-Hall 3',
          style: TextStyle(color: Colors.white),
        ),
        actions: [],
      ),
      body: Column(children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/theatre.jpeg"), fit: BoxFit.cover)),
          child: Stack(children: [
            Positioned(
              child: Text(
                'QPAC-Hall 3',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              bottom: 20,
              left: 30,
            )
          ]),
        ),
        Container(
          height: 40,
          //color
          padding: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          child: Text(
            'Guides',
            style: TextStyle(fontSize: 16),
          ),
        ),
        InkWell(
          onTap: (() {
            //
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Common3(
                levelValue: "push01",
              );
            }));
          }),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.blur_on,
                  size: 32,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Live Guides: Common',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (() {
            //
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Advance3(
                levelValue: "push02",
              );
            }));
          }),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.blur_on,
                  size: 32,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Live Guides: Advance',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (() {
            //
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Pensioner3(
                levelValue: "push03",
              );
            }));
          }),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.blur_on,
                  size: 32,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Live Guides: Pensioner',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
