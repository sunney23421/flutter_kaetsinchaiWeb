import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_website/theme/theme.dart';
import 'package:responsive_website/widgets/responsive.dart';

class SushiCard extends StatefulWidget {
  const SushiCard({Key? key}) : super(key: key);

  @override
  State<SushiCard> createState() => _SushiCardState();
}

class _SushiCardState extends State<SushiCard> {
  Offset _offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ResponsiveWidget.isSmallScreen(context)
        ?
        //for small screen
        //
        Container()
        : Container(
            height: 300,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Sushi Detection', style: headlineStyle),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          );
  }
}
