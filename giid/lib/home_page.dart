import 'package:flutter/material.dart';
import 'package:giid/events/lives/live_guides.dart';
import 'package:giid/events/lives2/live_guides.dart';
import 'package:giid/events/lives3/live_guides.dart';
import 'package:giid/events/lives4/live_guides.dart';
import 'package:giid/events/lives5/live_guides.dart';
import 'package:giid/events/lives6/live_guides.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _img(),
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 12),
          alignment: Alignment.centerLeft,
          child: Text(
            'Events',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
            child: Container(
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            children: [
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall1.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 1',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides2();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall2.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 2',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides3();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall3.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 3',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides4();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall4.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 4',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides5();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall5.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 5',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides6();
                  }));
                }),
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hall6.jpeg"),
                          fit: BoxFit.cover),
                      //color: const Color.fromRGBO(241, 242, 244, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Color.fromARGB(255, 68, 66, 67), width: 1)),
                  child: Text(
                    'Hall 6',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 1),
                          )
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}

Widget _img() {
  return Center(
      child: Stack(
    alignment: Alignment.center,
    children: [
      Container(
        child: Image.asset("images/theatre.jpeg"),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          border: Border.all(color: Colors.black12, width: 1),
        ),
      ),
      Center(
        child: Text(
          'Welcome to Giid!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontStyle: FontStyle.italic,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 5.0),
                blurRadius: 2.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      )
    ],
  ));
}

// List<Widget> _box(BuildContext context) => List.generate(10, (index) {
//       //list[index].url
//       return InkWell(
//         onTap: (() {
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return LiveGuides();
//           }));
//         }),
//         child: Container(
//           width: 80,
//           padding: const EdgeInsets.only(top: 4, bottom: 4),
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               //color: const Color.fromRGBO(241, 242, 244, 1),
//               borderRadius: BorderRadius.circular(8),
//               border:
//                   Border.all(color: Color.fromARGB(255, 68, 66, 67), width: 1)),
//           child: Text(
//             'Hall 1',
//             style: const TextStyle(
//               //color: Colors.green,
//               fontSize: 14,
//             ),
//           ),
//         ),
//       );
//     });