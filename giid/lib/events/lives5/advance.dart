import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Homepage
class Advance5 extends StatefulWidget {
  final String levelValue;

  const Advance5({Key? key, required this.levelValue}) : super(key: key);

  @override
  _Advance5State createState() => _Advance5State();
}

class _Advance5State extends State<Advance5> {
  var content = "";

  late Timer _timer;

  late Response response;
  var dio = Dio();
  String host = 'http://localhost:3000';

  @override
  void initState() {
    super.initState();

    //开始推送歌词
    _timer = new Timer.periodic(Duration(milliseconds: 1000), (timer) {
      _getData();
    });
  }

  _getData() async {
    response = await dio.get(host + '/api/getTSOne', queryParameters: {
      'level': widget.levelValue,
    });
    content = response.data['object'];
    setState(() {});
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Live Guides: Advance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Container(
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0x30ffffff),
                  borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.all(12),
              child: Text(
                content,
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
