import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotelroom(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotelroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/room6.jpg'),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.45,
                    top: 10,
                    child: Center(
                        child: Text(
                      'DETAIL',
                      style: TextStyle(color: Colors.white,fontSize:20),
                    )),
                  ),
                  Positioned(
                       bottom: 70,
                      left: 10,
                      child: Text(
                        'Crown Plaza',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    bottom:45,
                      left: 10,
                      child: Text(
                    'Kochi, Kerala',
                    style: TextStyle(
                        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  )),Positioned(
                    left: 10,
                      bottom: 10,
                      child: Container(
                        padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                        child: Text('3.8⭐/134 reviews',style: TextStyle(color:Colors.white,fontSize: 12),),
                  ))
                ],
              ),Container(
                child: Row(
                  children: [
                    Expanded(child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 20,top: 10),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star,size: 20,color: Colors.yellow,),
                                Icon(Icons.star,size: 20,color: Colors.yellowAccent,),
                                Icon(Icons.star,size: 20,color: Colors.yellowAccent,),
                                Icon(Icons.star_half,size: 20,color: Colors.yellowAccent,),
                                Icon(Icons.star,size: 20,color: Colors.grey,),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('8kms to Lulu Mall',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w200
                              ),),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 10,top: 10),
                            child: Text('₹1200',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                          Text('/per day',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ))
                  ],
                ),
              ),Padding(padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: 400,
                child: ElevatedButton(onPressed: (){},child: Text('Book Now'),style: ElevatedButton.styleFrom(primary: Colors.purple,onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),),
              ),),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Description :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                padding: EdgeInsets.all(20),
                height: 500,
                child: SingleChildScrollView(
                  child: Text('Located in Kozhikode, 1.1 miles from Kozhikode Beach, Hotel Park Residency provides accommodations with a shared lounge, free private parking, a restaurant and a bar. With free WiFi, this 3-star hotel offers room service and a 24-hour front desk. The property has a concierge service, a tour desk and currency exchange for guests. All units are equipped with air conditioning, a flat-screen TV with satellite channels, a fridge, a electric tea pot, a shower, free toiletries and a desk. All guest rooms include a private bathroom, a hairdryer and bed linen. A continental, Asian or halal breakfast is served at the property. Calicut Train Station is a 10-minute walk from the hotel, while Tirur Train Station is 28 miles away. The nearest airport\n is Calicut International Airport, 17 miles from Hotel Park Residency.',style: TextStyle(fontSize: 16),),
                ),
              )
            ],
          ),
        ],
      ),


    );
  }
}
