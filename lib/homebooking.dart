import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),debugShowCheckedModeBanner: false,
  ));
}
final List rooms=[
  {
    "image":"https://static.theprint.in/wp-content/uploads/2022/10/Hotel.jpg",
    "title":"Awesom room near kakkanad"
  },
  {
    "image":"https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&w=1000&q=80 ",
    "title":"Peaceful room"
  },
  {
    "image":"https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?cs=srgb&dl=pexels-pixabay-262048.jpg&fm=jpg",
    "title":"Beautiful room"
  },
  {
    "image":"https://www.xotels.com/wp-content/uploads/2020/03/hotel-room-type-xotels-hotel-management-company.webp",
    "title":"vintage room"
  }
];

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
        SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
          return _buildRooms(context,index);
        },
           childCount:100,
        )
        )
      ],),
    );
  }
  Widget _buildRooms(BuildContext context,int index){
    var room = rooms[index % rooms.length];
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Stack(
                  children:<Widget> [
                    Image.network(room['image']),
                   Positioned(
                    right:10,
                     top: 10,
                     child: Icon(Icons.star,color: Colors.grey.shade800,size: 20,),
                  ),
                    const Positioned(
                      right:8,
                      top: 8,
                      child: Icon(Icons.star_border,color: Colors.white,size: 24,),
                    ),
                    Positioned(
                      bottom:20,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: const Text("\$40"),
                      )
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(room['title'],style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 5,),
                      const Text("kakkanad,kochi"),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:const<Widget>[
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("(220 reviews)", style:TextStyle(color: Colors.grey) ,)
                        ]
                        
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
