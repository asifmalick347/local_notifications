import 'package:flutter/material.dart';
import 'package:local_notifications/services/notifications_services.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationServices().initNotification(context);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Flutter Notifications"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                NotificationServices().showNotification(title: "My Notification", body: "This is my notification body", payload: "secondScreen");
              },
              child: const Text("Local Notification"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                NotificationServices().scheduledNotification(title: "Scheduled Notification", body: "Scheduled Notification Body",);
              },
              child: const Text("Schedule Notification"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                NotificationServices().periodicNotification(title: "Periodic Notification", body: "Periodic Notification Body",);
              },
              child: const Text("Periodic Notification"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                NotificationServices().cancelNotification(notificationId: 0);
              },
              child: const Text("Cancel Notification"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                NotificationServices().cancelAllNotifications();
              },
              child: const Text("Cancel All Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
