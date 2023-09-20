import 'package:iconsax/iconsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home.dart';

class notifcationsTab extends StatefulWidget {
  const notifcationsTab({super.key});

  @override
  State<notifcationsTab> createState() => _notifcationsTabState();
}

class _notifcationsTabState extends State<notifcationsTab> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;// Initialize as needed


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 0, top: 0),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:Color(0xffF2F2F2), // Background color of the circular container
          ),
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            }, icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Color(0xff2F1155),
          ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Center(
                          child: Text(
                            'Notifications',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6E34B8)),
                          ),
                        ),
                    ),
            SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('New',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F1155)
                              ),),
                            ),
                            SizedBox(height: 14,),
                            Container(
                              width: 370,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 3.0,//Set the elevation to 3
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                                onPressed: () {
                                  // Your button's onPressed action
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('29 June 2021, 7.14 PM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('You received Rp 100.000 from Alexandr\n Gibson Jogja',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff363853)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('‘Pay debt’',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                        ],
                                      ),
                                    ),
                                    Spacer(), // Add space between the text and the icon
                                    GestureDetector(
                                      onTap: () { setState(() {
                                        isExpanded1 = !isExpanded1;
                                      }); },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: isExpanded1 ? Colors.red : Colors.green, width: 3)
                                        ),
                                        child: Icon(
                                          isExpanded1 ? Icons.expand_less : Icons.expand_more,
                                          color: isExpanded1 ? Colors.red : Colors.green,
                                          size: 30,// Icon color based on isExpanded
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 370,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 3.0,//Set the elevation to 3
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                                onPressed: () {
                                  // Your button's onPressed action
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('29 June 2021, 9.02 AM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('You spent Rp 32.000 for Coffe Cetar\n back Tugu Sentral',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff363853)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('‘Buy drink’',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                        ],
                                      ),
                                    ),
                                    Spacer(), // Add space between the text and the icon
                                    GestureDetector(
                                      onTap: () { setState(() {
                                        isExpanded2 = !isExpanded2;
                                      }); },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: isExpanded2 ? Colors.red : Colors.green, width: 3)
                                        ),
                                        child: Icon(
                                          isExpanded2 ? Icons.expand_less : Icons.expand_more,
                                          color: isExpanded2 ? Colors.red : Colors.green,
                                          size: 30,// Icon color based on isExpanded
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('Recent',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F1155)
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 370,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 3.0,//Set the elevation to 3
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  )
                                ),
                                onPressed: () {
                                  // Your button's onPressed action
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('28 June 2021, 8.32 PM',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: Color(0xff828282)
                                          ),),
                                          SizedBox(height: 5,),
                                          Text('You spent Rp 210.000 for pay Tokosbla\n ijo mera',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff363853)
                                          ),),
                                          SizedBox(height: 5,),
                                          Text('‘Buy items’',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: Color(0xff828282)
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Spacer(), // Add space between the text and the icon
                                    GestureDetector(
                                      onTap: () { setState(() {
                                        isExpanded3 = !isExpanded3;
                                      }); },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: isExpanded3 ? Colors.red : Colors.green, width: 3)
                                        ),
                                        child: Icon(
                                          isExpanded3 ? Icons.expand_less : Icons.expand_more,
                                          color: isExpanded3 ? Colors.red : Colors.green,
                                          size: 30,// Icon color based on isExpanded
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 370,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 3.0,//Set the elevation to 3
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                                onPressed: () {
                                  // Your button's onPressed action
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('29 June 2021, 7.14 PM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('You received Rp 100.000 from Alexandr\n Gibson Jogja',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff363853)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('‘Pay debt’',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                        ],
                                      ),
                                    ),
                                    Spacer(), // Add space between the text and the icon
                                    GestureDetector(
                                      onTap: () { setState(() {
                                        isExpanded4 = !isExpanded4;
                                      }); },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: isExpanded4 ? Colors.red : Colors.green, width: 3)
                                        ),
                                        child: Icon(
                                          isExpanded4 ? Icons.expand_less : Icons.expand_more,
                                          color: isExpanded4 ? Colors.red : Colors.green,
                                          size: 30,// Icon color based on isExpanded
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 370,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 3.0,//Set the elevation to 3
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    )
                                ),
                                onPressed: () {
                                  // Your button's onPressed action
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('28 June 2021, 8.32 PM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('You spent Rp 210.000 for pay Tokosbla\n ijo mera',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff363853)
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('‘Buy items’',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: Color(0xff828282)
                                            ),),
                                        ],
                                      ),
                                    ),
                                    Spacer(), // Add space between the text and the icon
                                    GestureDetector(
                                      onTap: () { setState(() {
                                        isExpanded5 = !isExpanded5;
                                      }); },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: isExpanded5 ? Colors.red : Colors.green, width: 3)
                                        ),
                                        child: Icon(
                                          isExpanded5 ? Icons.expand_less : Icons.expand_more,
                                          color: isExpanded5 ? Colors.red : Colors.green,
                                          size: 30,// Icon color based on isExpanded
                                        ),
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
    ],
    ),
      ),
    );
  }
}

