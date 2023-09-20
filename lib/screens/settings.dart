import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/profileScreen.dart';
import 'package:wallet_app/screens/signup_screen.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
              child: Text(
                'Settings',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6E34B8)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 370,
                    height: 54,
                    child: OutlinedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                        child:const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Iconsax.profile_add,
                            color: Color(0xff9038FF),
                            size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 220),
                              child: Text('Profile',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F1155)
                              ),),
                            ),
                            Icon(Icons.arrow_forward_ios,
                            color: Color(0xff828282),
                            size: 15,)
                          ],
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 370,
                    height: 54,
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                        child:const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Iconsax.notification,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 160),
                              child: Text('Notifications',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F1155)
                                ),),
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Color(0xff828282),
                              size: 15,)
                          ],
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 370,
                    height: 54,
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                        child:const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Iconsax.wallet_2,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 210),
                              child: Text('Wallet',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F1155)
                                ),),
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Color(0xff828282),
                              size: 15,)
                          ],
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 370,
                    height: 54,
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                        child:const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Iconsax.key_square,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 150),
                              child: Text('Login Settings',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F1155)
                                ),),
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Color(0xff828282),
                              size: 15,)
                          ],
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 370,
                    height: 54,
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                        child:const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Iconsax.call_calling,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 150),
                              child: Text('Service Center',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F1155)
                                ),),
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Color(0xff828282),
                              size: 15,)
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));// Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.white),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Iconsax.login,
    color: Color(0xff9038FF),
                      size: 30,)),
                ),
                SizedBox(height: 10,),
                Text('Log Out',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff9038FF)
                  ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
