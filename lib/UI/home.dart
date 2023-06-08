import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobadraa/UI/expandable.dart';
import 'package:mobadraa/off/more_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:workmanager/workmanager.dart';

import 'ex.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  final number = '16474';
  @override
  void initState() {
    Workmanager().registerPeriodicTask(
      "1",
      "periodic Notification",
      frequency: Duration(minutes: 60),
    );

    Workmanager().registerPeriodicTask(
      "2",
      "periodic Notification at day",
      frequency: Duration(days: 1),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  // height: 350.h,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/Group31.png",
                      fit: BoxFit.contain,
                    )),
              ),
              InkWell(
                onTap: ()async{
                  launch('tel://$number');
                },
                child: Container(
                  // height: 350.h,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/Group32.png",
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                // height: 350.h,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/Group33.png",
                    fit: BoxFit.contain,
                  )),
              Container(
                // height: 350.h,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/Group34.png",
                    fit: BoxFit.contain,
                  )),
                          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Color(0xff710c46).withOpacity(.3),),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),),
                fixedSize: MaterialStateProperty.all<Size>(Size(500.w, 120.h)),
                backgroundColor: MaterialStateProperty.all(Color(0xff710c46)),
              ),


                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyExpansionPanelList()));
                },

                child: const Text("اعرف المزيد",style: TextStyle(fontSize: 20,fontFamily: 'Almarai'),),),
            ),



            ],
          ),
        ),
      ),

      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(25.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //
      //       FloatingActionButton.extended(
      //         onPressed: () async {
      //           Navigator.pushReplacement(context,
      //               MaterialPageRoute(builder:
      //           (context) =>
      //               ExpandableWidget()
      //           ));
      //         },
      //           backgroundColor: Color(0xff720c47),
      //           hoverColor: Colors.orange,
      //           splashColor: Colors.purple,
      //           elevation: 12,
      //           hoverElevation: 50,
      //           tooltip: 'اعرف المزيد',
      //
      //
      //         label: Text("اعرف المزيد",style: TextStyle(fontSize: 18),),
      //
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
  Widget buildButton() {
    final number = '16474';
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FloatingActionButton(
            onPressed: () {  },
      child: Icon(Icons.camera, color: Colors.white, size: 29,),
      backgroundColor: Colors.black,
      tooltip: 'Capture Picture',
      elevation: 5,
      splashColor: Colors.grey,
    ),

        ],
      ),

        // onPressed: () async {
        //   launch('tel://$number');
        // },

    ); // ElevatedButton
  }
}
