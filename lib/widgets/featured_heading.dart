import 'package:flutter/material.dart';
import 'package:responsive_website/widgets/responsive.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: screenSize.width < 800
          ? Column(
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263b5e)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Clue of the woo2222den cottage',
                  textAlign: TextAlign.end,
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263b5e)),
                ),
                Expanded(
                  child: Text(
                    'All projects',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
