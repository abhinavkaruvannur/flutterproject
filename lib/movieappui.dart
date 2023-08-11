import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MovieApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MovieApp extends StatelessWidget {
  List img = [ "assets/images/movie1.jpg",
    "assets/images/movie2.jpg",
    "assets/images/movie3.jpg",
    "assets/images/movie4.jpg",
    "assets/images/movie.jpg"
  ];
  List img2=["assets/images/movies.jpg",
    "assets/images/movies2.jpg",
    "assets/images/movies5.jpg",
    "assets/images/movies4.jpg",
    "assets/images/ironman.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search by title,genre,actor",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 15, bottom: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recent searches",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[700])),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Marvel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[700])),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Captain america',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[700])),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Captain Marvel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[700])),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Thor',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Text(
                "Popular",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: img.map((movies) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image:AssetImage(movies), fit: BoxFit.cover)),
                );
              }).toList()),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Text(
                "Recommendation for you",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: img2.map((movies) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:AssetImage(movies), fit: BoxFit.cover)),
                    );
                  }).toList()),
            ),
          ),
        ],
      ),
    );
  }
  void setState(Null Function() param0) {}
}
