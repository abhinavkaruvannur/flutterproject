import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 180,
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          floating: true,
          flexibleSpace: ListView(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                "type your location",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kakkanad, kochi",
                    border: InputBorder.none,
                    icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: _buildCategories(),
        ),
      ]),
    );
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15,
          ),
          Category(
            backgroundColor: Colors.pink,
            icon: Icons.hotel,
            title: "Hotel",
           ),
          SizedBox(
            width: 15,
          ),
          Category(
            backgroundColor: Colors.blue,
            icon: Icons.restaurant,
            title: "Restaurant",
          ),
          SizedBox(
            width: 15,
          ),
          Category(
            backgroundColor: Colors.orange,
            icon: Icons.local_cafe,
            title: "Cafe",
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category(
      {Key? Key, required this.icon, required this.title, this.backgroundColor})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
