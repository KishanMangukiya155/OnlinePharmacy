import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productscard extends StatefulWidget {
  const Productscard(
      {Key? key, this.image, this.name, this.sname, this.pricr, this.sprice})
      : super(key: key);

  final image;
  final name;
  final sname;
  final pricr;
  final sprice;

  @override
  State<Productscard> createState() => _ProductscardState();
}

class _ProductscardState extends State<Productscard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3D3AC),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.teal,
                  )),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        Image(image: AssetImage(widget.image), height: 200, width: 200),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 340,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.sname,
                              style: TextStyle(color: Colors.black38),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(
                                  Icons.star_outline,
                                  size: 22,
                                  color: Colors.yellowAccent.shade700,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_circle_outline_outlined,
                                    size: 30),
                                color: Color(0xfffb8886f)),
                            SizedBox(height: 5),
                            Text("1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_circle_outline_outlined,
                                    size: 30),
                                color: Color(0xfffb8886f)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Product Detail',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'This medication is a multivitamin'
                      ' product used to treat or prevent'
                      ' vitamin deficiency due to poor diet,.'
                      ' certain illnesses, or during pregnancy. '
                      'Vitamins are important building blocks of'
                      'the body and help keep you in good health.',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.pricr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(width: 10),
                      Text(widget.sprice,
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                              fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfffb886f),
                        ),
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff2A8C8B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,
                                color: Colors.white, size: 20),
                            SizedBox(width: 10),
                            Text('Add to Basket',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
