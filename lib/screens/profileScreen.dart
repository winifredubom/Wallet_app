import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/screens/settings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
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
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6E34B8)),
                  ),
                ),
                SizedBox(height: 10,),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 40.0, // Adjust the radius as needed
                      backgroundImage: AssetImage(
                          'assets/your_image.png'), // Replace with your image path
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(Iconsax.gallery_edit,
                        size: 18,),
                        onPressed: () {
                          // Add your onPressed action here
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Center(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Jaka Joko',
                        style: TextStyle(
                          color: Color(0xff2F1155),
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                        ),),
                        SizedBox(width: 2,),
                        Icon(Iconsax.edit_2,
                        color: Color(0xff828282),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Container(
              child: Column(
                children: [
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
                            Icon(Iconsax.link,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 130),
                              child: Text('Connected Account',
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
                            Icon(Iconsax.security_safe,
                              color: Color(0xff9038FF),
                              size: 24,),
                            Padding(
                              padding: EdgeInsets.only(right: 110),
                              child: Text('Privacy and Security',
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
                            Icon(Iconsax.key,
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
                            Icon(Iconsax.message_question,
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                      shape: CircleBorder(),
                      backgroundColor: Colors.white),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Iconsax.trash,
                        color: Color(0xff9038FF),
                        size: 30,)),
                ),
                SizedBox(height: 10,),
                Text('Delete Account',
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
