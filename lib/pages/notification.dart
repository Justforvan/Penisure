import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF002175),
        elevation: 0,
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return _buildNotificationItem(notifications[index]);
        },
      ),
    );
  }

  Widget _buildNotificationItem(NotificationItem notification) {
    return ListTile(
      title: Text(notification.title),
      subtitle: Text(notification.description),
      onTap: () {
        // Handle notification tap event here
      },
    );
  }
}

class NotificationItem {
  final String title;
  final String description;

  NotificationItem(this.title, this.description);
}

List<NotificationItem> notifications = [
  NotificationItem('Notification 1', 'This is notification 1'),
  NotificationItem('Notification 2', 'This is notification 2'),
  NotificationItem('Notification 3', 'This is notification 3'),
];
