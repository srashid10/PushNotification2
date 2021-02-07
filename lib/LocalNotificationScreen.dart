import 'package:coursework/NotificationPlugin.dart';
import 'package:flutter/material.dart';

class LocalNotificationScreen extends StatefulWidget {
  @override
  _LocalNotificationScreenState createState() => _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  //
  @override
  void initState(){
    super.initState();
    notificationPlugin.setListenerForLowerVersions(onNotificationInLowerVersions);
    notificationPlugin.setonNotificationClick(onNotificationClick);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Notifications'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async {
            await notificationPlugin.showNotification();
          },
          child: Text('Send Notification'),
        ),
      ),
    );

  }

  onNotificationInLowerVersions(ReceivedNotification receivedNotification){}

  onNotificationClick(String payload){
    print('Payload $payload');
  }
}
