import 'package:flutter/material.dart';
import 'package:onlinepharmacy/productscard.dart';

class Medicines extends StatefulWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  State<Medicines> createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  List<Map<String, dynamic>> namelist1 = [
    {
      'image': "assets/image/multi.png",
      'name': 'Multi Vitamins',
      'sname': 'go pills ',
      'pricr': "\$217",
      'sprice': '\$287'
    },
    {
      'image': "assets/image/thay.png",
      'name': 'Thayrosafe',
      'sname': '180 pills ',
      'pricr': "\$342",
      'sprice': '\$392'
    },
    {
      'image': "assets/image/omega.png",
      'name': 'Omega 3',
      'sname': '132 pills ',
      'pricr': "\$165",
      'sprice': '\$185'
    },
    {
      'image': "assets/image/sore.png",
      'name': 'Sore Capsule',
      'sname': '60 Capsule ',
      'pricr': "\$135",
      'sprice': '\$165'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff2A8C8B),
            )),
        title: Center(
            child: Text('Medicines', style: TextStyle(color: Colors.black))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart, color: Color(0xff2A8C8B)),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 250,
                    //color: Colors.black,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF4D2AA),
                        hintText: 'Search for drugs,doctors,etc...',
                        hintStyle: TextStyle(fontSize: 13),
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 5,
                        ),
                        prefixIcon: Icon(Icons.search_rounded),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff2A8C8B),
                      ),
                      child: Icon(Icons.format_list_bulleted_sharp,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 613,
              width: 360,
              //  color: Colors.redAccent,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: namelist1.length,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 130,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffF4D2AA),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              namelist1[index]['image'],
                              height: 80,
                              width: 80,
                            ),
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(namelist1[index]['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(height: 10),
                              Text(namelist1[index]['sname'],
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(namelist1[index]['pricr'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10),
                                  Text(namelist1[index]['sprice'],
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff2A8C8B),
                                ),
                                SizedBox(height: 30),
                                CircleAvatar(
                                  backgroundColor: Color(0xfffb886f),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
    ;
  }
}
