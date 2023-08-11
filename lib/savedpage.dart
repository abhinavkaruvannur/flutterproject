import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: savedpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class savedpage extends StatelessWidget {
  List titleText = [
    "Captain America : The winter soldior",
    "Avengers",
    "Tom and Jerry",
    "Ice Age : The adventures of Buck Wild",
    "Kung Fu Panda"
  ];
  List subtitleText = [
    "Action Adventure",
    "Action Adventure",
    "Family Comedy",
    "Family Adventure",
    "Family Comedy"
  ];
  List images = [
    "assets/images/movies5.jpg",
    "assets/images/avengers.jpg",
    "assets/images/tomjerry.png",
    "assets/images/iceage.jpeg",
    "assets/images/panda.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF24223A),
        title: Center(
          child: Text(
            'Saved',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 5),
            child: Text("delete"),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            margin: EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[700],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(image: AssetImage(images[index]))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        titleText[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        subtitleText[index],
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),backgroundColor: Colors.red
                     ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Watch Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          );
        },
        itemCount: titleText.length,
      ),
    );
  }
}
