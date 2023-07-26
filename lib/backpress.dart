import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage(),));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context) =>
          AlertDialog(
            title: const Text('Exit!!'),
            content: const Text('Do You want to Exit??'),
            actions: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(false);
              }, child: const Text("No")),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(true);
              },
                  child: const Text('Yes'))
            ],
          ));
    }
    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Alert'),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

}