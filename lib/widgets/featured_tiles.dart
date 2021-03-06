import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_website/widgets/business_card.dart';
import 'package:responsive_website/widgets/projectsCard/sushi_Card.dart';
import 'package:responsive_website/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/test1.jpeg',
    'assets/images/test2.jpeg',
    'assets/images/test3.jpeg',
  ];

  final List<String> title = ['Sci-fi', 'Photography', 'Romance'];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? CarouselSlider(
            items: [SushiCard()],
            options: (CarouselOptions(
                //autoPlay: true,
                height: 30,
                enlargeCenterPage: true)),
          )
        // ? Padding(
        //     padding: EdgeInsets.only(top: screenSize.height / 50),
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           SizedBox(width: screenSize.width / 15),
        //           ...Iterable<int>.generate(assets.length).map(
        //             //... meant take whatever in assets.length, and to though them one by one
        //             (int pageIndex) => Row(
        //               children: [
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     SizedBox(
        //                       height: screenSize.width / 2.5,
        //                       width: screenSize.width / 1.5,
        //                       child: ClipRRect(
        //                         borderRadius: BorderRadius.circular(5.0),
        //                         child: Image.asset(
        //                           assets[pageIndex],
        //                           fit: BoxFit.cover,
        //                         ),
        //                       ),
        //                     ),
        //                     Padding(
        //                       padding: EdgeInsets.only(
        //                         top: screenSize.height / 70,
        //                       ),
        //                       child: Text(
        //                         title[pageIndex],
        //                         style: const TextStyle(
        //                           fontSize: 16,
        //                           fontFamily: 'Montserrat',
        //                           fontWeight: FontWeight.w500,
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 SizedBox(width: screenSize.width / 15),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     ...Iterable<int>.generate(assets.length).map(
            //       (int pageIndex) => Column(
            //         children: [
            //           SizedBox(
            //             // height: screenSize.width / 6,
            //             // width: screenSize.width / 3.8,
            //             height: screenSize.width/2,
            //             width: screenSize.width/4,
            //             child: Container(
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20.0),
            //                   image: DecorationImage(
            //                     fit: BoxFit.cover,
            //                     image: AssetImage(
            //                       assets[pageIndex],
            //                       // fit: BoxFit.cover,
            //                     ),
            //                   ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       offset: const Offset(0, 10),
            //                       blurRadius: 20,
            //                       spreadRadius: 5,
            //                       color: Colors.grey.withOpacity(0.3),
            //                     )
            //                   ]),
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(
            //               top: screenSize.height / 70,
            //             ),
            //             child: Text(
            //               title[pageIndex],
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 fontFamily: 'Montserrat',
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            child: CarouselSlider(
              items: [SushiCard()],
              options: (CarouselOptions(
                  //autoPlay: true,
                  enlargeCenterPage: true)),
            ),
          );
  }
}
