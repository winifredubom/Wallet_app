import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyContainerWithRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.fromLTRB(30, 10, 30, 0),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Last Transaction',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xff2F1155)
              ),),
              Text('View all',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 13,
                color: Color(0xff6E34B8)
              ),),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Container(
                  child: SvgPicture.asset(
                    'images/Group 12.svg',
                    height: 70,
                    width: 50,
                  ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Netflix',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color(0xff2F1155),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),),
                          Text('Month subscription',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff828282)
                          ),),
                        ],
                      ),
                    ),
              ),
                  Text(' \$12',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff363853),
                  ),)
        ],
              ),
          Row(
            children: [
              Container(
                child: SvgPicture.asset(
                  'images/Paypal logo.svg',
                  height: 70,
                  width: 50,
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Paypal',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff2F1155),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                      Text('Tax',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff828282)
                        ),),
                    ],
                  ),
                ),
              ),
              Text(' \$10',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff363853),
                ),)
            ],
          ),
          Row(
            children: [
              Container(
                child: SvgPicture.asset(
                  'images/Group 13.svg',
                  height: 70,
                  width: 50,
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pay later',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff2F1155),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                      Text('Buy item',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff828282)
                        ),),
                    ],
                  ),
                ),
              ),
              Text(' \$2',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff363853),
                ),)
            ],
          ),
            ],
          ),
      );
  }
}