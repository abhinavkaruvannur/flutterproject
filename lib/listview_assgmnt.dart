import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_assgnmt(),
  ));
}

class Listview_assgnmt extends StatelessWidget {
  var titles = ['Android', 'Flutter', 'IOS', 'Java', 'Python', 'React'];
  var titles2 = [
    'Android Tutorial',
    'Flutter Tutorial',
    'IOS Tutorial',
    'Java Tutorial',
    'Python Tutorial',
    'React Tutorial'
  ];
  var containercolors = [
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.pink,
    Colors.pinkAccent,
    Colors.pinkAccent,
    Colors.yellowAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center, child: Text('"Grouped ListView"')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      titles[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Container(
                        height: 100,
                        width: 50,
                        color: containercolors[index],
                      ),
                      title: Text(
                        titles2[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_circle),
                              Text('HanTh'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('24/12/20'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: titles.length,
      ),
    );
  }
}
