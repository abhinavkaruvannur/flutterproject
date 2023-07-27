import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewsHours(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewsHours extends StatefulWidget {
  @override
  State<NewsHours> createState() => _NewsHoursState();
}

class _NewsHoursState extends State<NewsHours> {
  bool agree = false;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              backgroundColor: Colors.white,
              title: RichText(
                text: TextSpan(
                    text: 'News',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: ' Hour',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange)),
                      TextSpan(
                          text: ' - Admin',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black))
                    ]),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.black,
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    text: "Data Start",
                  ),
                  Tab(
                    text: "Upload Item",
                  ),
                  Tab(
                    text: "All Data",
                  )
                ],
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 500,
                    child: TabBarView(
                        children: [
                      Text("data"),
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: const Row(
                                  children: [
                                    Icon(
                                      Icons.list,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width:4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Select Item',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: items
                                    .map((String item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                                buttonStyleData: ButtonStyleData(
                                  height: 50,
                                  width: 450,
                                  padding: const EdgeInsets.only(left: 14, right: 14),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.redAccent,
                                  ),
                                  elevation: 2,
                                ),
                                iconStyleData: const IconStyleData(
                                  icon: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                  ),
                                  iconSize: 14,
                                  iconEnabledColor: Colors.yellow,
                                  iconDisabledColor: Colors.grey,
                                ),
                                dropdownStyleData: DropdownStyleData(
                                  maxHeight: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.redAccent,
                                  ),
                                  offset: const Offset(-20, 0),
                                  scrollbarTheme: ScrollbarThemeData(
                                    radius: const Radius.circular(40),
                                    thickness: MaterialStateProperty.all<double>(6),
                                    thumbVisibility:
                                        MaterialStateProperty.all<bool>(true),
                                  ),
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 40,
                                  padding: EdgeInsets.only(left: 14, right: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),border: Border.all(color: Colors.black),),
                              height: 60,
                              width: 450,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon:Icon(Icons.close),
                                    hintText: 'Cover Picture Uri'
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),border: Border.all(color: Colors.black),),
                              height: 60,
                              width: 450,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon:Icon(Icons.close),
                                      hintText: 'Title'
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),border: Border.all(color: Colors.black),),
                              height: 100,
                              width: 450,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 7),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Description',
                                      hintText: 'Description'
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Material(
                                      child: Checkbox(
                                        value: agree,
                                        onChanged: (value){
                                          setState(() {
                                            agree = value ?? false;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Notify to all All Users',
                                    overflow: TextOverflow.ellipsis,),
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                                        Padding(padding: const EdgeInsets.only(left: 8),
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 30),
                                            child: Text('Preview'),
                                          ),)
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Text("jidhfjidhf"),
                      Text("sdjhfjhsdfjh"),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
