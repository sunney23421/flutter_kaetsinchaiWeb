import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_website/theme/theme.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  Offset _offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      //color: Colors.red[50],
      alignment: Alignment.center,
      //padding: EdgeInsets.only(top: 10),
      height: height * 0.65,
      width: width,
      child: Center(
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            // ..rotateX(0.01 * _offset.dy) // changed
            //..rotateY(-0.01 * _offset.dx), // changed
            ..rotateX((_offset.dy > 5
                ? 0.001 * _offset.dy
                : 0.001 * _offset.dy)) // changed
            ..rotateY(-0.001 * _offset.dx), // changed
          alignment: FractionalOffset.center,
          child: GestureDetector(
            onPanUpdate: (details) => setState(() => _offset += details.delta),
            onTap: () => debugPrint("${_offset.dy}"),
            onPanEnd: (void e) => setState(() => _offset = Offset.zero),
            onDoubleTap: () => setState(() => _offset = Offset.zero),
            child: SizedBox(
              height: height / 2,
              width: width < 800 ? width : height / 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('../assets/images/noise.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.01),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 25,
                              spreadRadius: -5,
                            )
                          ],
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white60, Colors.white10]),
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 2, color: Colors.white30),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.sunny,
                                  size: 50,
                                  color: Colors.white60,
                                ),
                                //color: blue,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: const EdgeInsets.only(left: 20),
                                alignment: Alignment.centerLeft,
                                //color: Colors.red[100],
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "CHAIWAT KASTSINCHAI",
                                        style: nameFont,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Programmer",
                                        //style: nameFontSub,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.blue,
                                child: const Icon(
                                  Icons.arrow_downward,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
