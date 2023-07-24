import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmersfreshzone(),
    debugShowCheckedModeBanner: false,
  ));
}

class farmersfreshzone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 145,
            backgroundColor: Colors.green,
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.location_on),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 5),
                child: Text(
                  'Kochi',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
            floating: true,
            pinned: true,
            bottom: AppBar(backgroundColor: Colors.green,
              toolbarHeight: 70,
              title: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for vegitables and fruits... ",
                    border: InputBorder.none,
                    icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'VEGITABLES',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'FRUITS',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'EXOTIC CUTS',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/tree.jpg"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/man.jpg"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1251268131/photo/senior-man-with-bunch-of-freshly-harvested-carrots.jpg?s=2048x2048&w=is&k=20&c=Cr_0c7bMUayiYdo1Z3VKajlBqG0JBiWmweQCGEiCgRM='))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/609903578/photo/man-putting-tomatoes-from-garden-in-a-wooden-crate.jpg?s=2048x2048&w=is&k=20&c=TmvigobPUpRHDyNPmMY4raeodGqXFJOZ02amacaO8Xg='))),
                ),
              ],
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconTitle(icon: Icons.alarm, title: "30 mins ploicy"),
                  IconTitle(
                      icon: Icons.camera_front_outlined, title: "Traceability"),
                  IconTitle(icon: Icons.home_work, title: "Local Sourrouding")
                ],
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VegGrid()
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.green[100],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
        ],

      ),
    );
  }

    }
  


class IconTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Icon(icon), Text(title)],
      ),
    );
  }
}

class VegGrid extends StatelessWidget {
  var imagess = [
    "assets/images/vegitable2.jpg",
    "assets/images/vegitable3.jpg",
    "assets/images/vegitable4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.white60, blurRadius: 10)],
                  image: DecorationImage(
                      image: AssetImage(imagess[index]), fit: BoxFit.cover),
                ),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.asset(imagess[index]),
                // )
              ),
            ),
          ],
        );
      },
      itemCount: imagess.length,
    );
  }
}
