import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobadraa/UI/ex.dart';
import 'package:mobadraa/UI/home.dart';
import 'package:mobadraa/off/register.dart';
import 'package:workmanager/workmanager.dart';

import 'Notfication/staticVars.dart';
import 'expandable.dart';


FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

Future showNotification() async {

  int rndmIndex = Random().nextInt(StaticVars().smallDo3a2.length-1);

  AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    '$rndmIndex.0',
    'في كل ثانية حياة',

    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,

  );
  var iOSPlatformChannelSpecifics = DarwinNotificationDetails(
    threadIdentifier: 'thread_id',
  );
  var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics
  );

  await flutterLocalNotificationsPlugin?.show(
    rndmIndex,
    'في كل ثانية حياة',
    StaticVars().smallDo3a2[rndmIndex],
    platformChannelSpecifics,
  );

  /// periodically...but const id && const title,body
  /*await flutterLocalNotificationsPlugin.periodicallyShow(
    Random().nextInt(azkar.length-1),
    'السلام عليكم',
    azkar[Random().nextInt(azkar.length-1)],
    RepeatInterval.everyMinute,
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
    payload: '',
  );*/

}


@pragma('vm:entry-point')
void callbackDispatcher() {

  // initial notifications
  var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
  var initializationSettingsIOS = DarwinInitializationSettings();

  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  WidgetsFlutterBinding.ensureInitialized();

  flutterLocalNotificationsPlugin?.initialize(
    initializationSettings,
  );


  Workmanager().executeTask((task, inputData) {
    showNotification();
    return Future.value(true);
  });
}


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {


    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Home()
            )
        )
    );

    Workmanager ().initialize(
        callbackDispatcher,
        isInDebugMode: false
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                    child: Container(
                      // height: 350,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/Group12.png",
                          fit: BoxFit.contain,
                        )),
                  ),

                ],
              ),
      ),

    );
  }
}