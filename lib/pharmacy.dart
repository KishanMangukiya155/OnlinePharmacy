import 'package:flutter/material.dart';
import 'package:onlinepharmacy/medicines.dart';
import 'package:onlinepharmacy/productscard.dart';

class PharmacyPage extends StatefulWidget {
  PharmacyPage({Key? key}) : super(key: key);

  @override
  State<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  int selcted = 0;

  List<Map<String, dynamic>> namelist = [
    {
      'image': "assets/image/image_2023_05_22T09_46_52_139Z.png",
      'name': "Consultation"
    },
    {
      'image': "assets/image/image_2023_05_22T09_47_35_088Z.png",
      'name': "Medicines"
    },
    {
      'image': "assets/image/image_2023_05_22T09_47_21_315Z.png",
      'name': "Lab Tests"
    },
    {
      'image': "assets/image/image_2023_05_22T09_47_04_876Z.png",
      'name': "Health"
    },
  ];

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
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  width: 360,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 40, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.short_text,
                            size: 30, color: Color(0xff22706F)),
                        Text(
                          'Online\nPharmacy',
                          style: TextStyle(
                              color: Color(0xffFC3D63),
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    //  left: 110,
                    top: -110,
                    right: -320,
                    bottom: -50,
                    child: Image.asset('assets/image/ph1.png')),
              ],
            ),
            SizedBox(height: 5),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 240,
                        //color: Colors.black,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF4D2AA),
                            hintText: 'Search for drugs,doctors,etc...',
                            hintStyle: TextStyle(fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 20, top: 5),
                            prefixIcon: Icon(Icons.search_rounded),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff2A8C8B),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Medicines()));
                            },
                            child: Icon(Icons.format_list_bulleted_sharp,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop by Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 105,
              width: 360,
              //color: Colors.white,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selcted = index;
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: selcted == index
                                ? Color(0xfffb886f)
                                : Color(0xffF4D2AA),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Image.asset(
                              namelist[index]['image'],
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(namelist[index]['name']),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 240,
              width: 360,
              //color: Colors.white,
              child: ListView.builder(
                itemCount: namelist1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Productscard(
                                image: namelist1[index]['image'],
                                name: namelist1[index]['name'],
                                sname: namelist1[index]['sname'],
                                pricr: namelist1[index]['pricr'],
                                sprice: namelist1[index]['sprice'],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 230,
                          width: 177,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffF4D2AA),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 10, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff2A8C8B),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  namelist1[index]['image'],
                                  height: 70,
                                  width: 70,
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(namelist1[index]['pricr'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 10),
                                          Text(namelist1[index]['sprice'],
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
