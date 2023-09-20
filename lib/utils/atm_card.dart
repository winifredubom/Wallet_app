import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/utils/styles.dart';

//card on the home screen
class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: 400,
        height: 150,
        child: Card(
          color: colors.cardcolor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Stack(
            children: [
              // Add the semicircle to the top left corner.
              Positioned(
                top: 2.0,
                left: 15.0,
                child: SvgPicture.asset(
                  'images/Ellipse 4.svg',
                  color: colors.cardcolor3,
                  width: 50,
                  height: 40,
                ),
              ),
              // Add the larger outlined circle to the bottom right corner.
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SvgPicture.asset(
                  'images/Ellipse 3.svg',
                  color: colors.cardcolor2,
                  width: 90,
                  height: 80,
                ),
              ),
              // Text in rows and columns
              const Positioned(
                top: 20.0,
                left: 30.0,
                child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(15, 25, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                                ),
                              ),
                              SizedBox(height: 3.0),
                              Text(' \$1.234',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),),
                            ],
                          ),
                        ),
                        SizedBox(width: 90,),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(0, 25, 200, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                                ),
                              ),
                              SizedBox(height: 3.0),
                              Text(
                                'Mabank',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//card for the addcard screen
class Addcard extends StatefulWidget {
  const Addcard({super.key});

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 340,
      child: Card(
        color: colors.cardcolor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Stack(
          children: [
            // Add the semicircle to the top-left corner using SVG.
            Positioned(
              top: 0.0,
              left: 0.0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50)),
                    child: SvgPicture.asset(
                      'images/Ellipse 6.svg',
                ),
              ),
            ),
            // Add the ATM card chip to the semicircle at the top-left corner.
            Positioned(
              top: 80.0,
              left: 50.0,
              child: SvgPicture.asset(
                'images/Group 17.svg', // Replace with your chip SVG path.
                width: 35,
                height: 40,
              ),
            ),
            // Add the larger outlined semicircle to the bottom right corner using SVG.
            Positioned(
              bottom: 280.0,
              right: 0.0,
              child: SvgPicture.asset(
                'images/Ellipse 5.svg', // Replace with your outlined semicircle SVG path.
                width: 60,
                height: 60,
              ),
            ),
            // Add a vector inside the outlined semicircle at the bottom right corner using SVG.
            Positioned(
              bottom: 0.0,
              right: 0.0,
              top: 220,
              left: 100,
              child: Stack(
                children: [
                  SvgPicture.asset(
                  'images/Ellipse 1.svg', // Replace with your vector SVG path.
                  width: 150,
                  height: 270,
                ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'images/Vector.svg',
                      height: 20,
                      width: 65,
                    ),
                  ),
                ]
              ),
            ),
            // Text in rows and columns

          ],
        ),
      ),
    );
  }
}


//card for the detailScreen
class Detail_card extends StatefulWidget {
  const Detail_card({super.key});

  @override
  State<Detail_card> createState() => _Detail_cardState();
}

class _Detail_cardState extends State<Detail_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 220,
      child: Card(
        color: colors.cardcolor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Stack(
          children: [
            // Add the semicircle to the top-left corner using SVG.
            Positioned(
              top: -10.0,
              right: -20.0,
              child: Transform.rotate(
                angle: 7,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(85)),
                  child:  SvgPicture.asset(
                      'images/Ellipse 6.svg',
                    height: 115,
                    width: 100,
                  ),
                ),
              ),
            ),
            // Add the ATM card chip to the semicircle at the top-left corner.
            Positioned(
              top: 40.0,
              left: 230.0,
              child: Transform.rotate(
                angle: 14.15,
                child: SvgPicture.asset(
                  'images/Group 17.svg', // Replace with your chip SVG path.
                  width: 70 ,
                  height: 35,
                ),
              ),
            ),
            // Add the larger outlined semicircle to the bottom right corner using SVG.
            Positioned(
              bottom: -6.0,
              right: 0.0,
              child: Transform.rotate(
                angle: 2,
                child: SvgPicture.asset(
                  'images/Ellipse 5.svg', // Replace with your outlined semicircle SVG path.
                  width: 90,
                  height: 60,
                ),
              ),
            ),
            // Add a vector inside the outlined semicircle at the bottom right corner using SVG.
            Positioned(
              bottom: -5.0,
              right: 170.0,
              top: 90,
              left: 0,
              child: Stack(
                  children: [
                    Transform.rotate(
                      angle: 1.3,
                      child: SvgPicture.asset(
                        'images/Ellipse 1.svg', // Replace with your vector SVG path.
                        width: 100,
                        height: 250,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'images/Vector.svg',
                        height: 20,
                        width: 20,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ]
              ),
            ),
            // Text in rows and columns

          ],
        ),
      ),
    );
  }
}


