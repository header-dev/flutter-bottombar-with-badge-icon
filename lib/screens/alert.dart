import 'package:app1305/shared.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          btnAddAlert(),
          btnDeleteAlert(),
        ],
      )),
    );
  }

  Widget btnAddAlert() => TextButton(
        child: Text(
          'Add Alert',
          textScaleFactor: 1.5,
        ),
        onPressed: () => Share.addAlert(),
      );

  Widget btnDeleteAlert() => TextButton(
        onPressed: () => Share.removeAlert(),
        child: Text(
          'Delete Alert',
          textScaleFactor: 1.5,
        ),
      );
}
