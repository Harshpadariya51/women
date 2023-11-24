import 'package:flutter/material.dart';

import '../util.dart';
import 'add_to_bag.dart';
import 'catigreies_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),)
      //   },
      // ),
      appBar: AppBar(
        title: Text("Search Results"),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.black12,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("LATEST", style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down),
                Spacer(),
                Text("FILTERS", style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: SingleChildScrollView(
                child: Column(
                  children: newList.map((e) {
                    dynamic image = e['img'];
                    num pric = e['price'];
                    String? names = e['name'];
                    String? info = e['info'];
                    String? wash = e['wash'];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DitailPage(
                              img: image,
                              name: names,
                              price: pric,
                              info: info,
                              wash: wash,
                            );
                          },
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: ContList(img: image, price: pric),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContList extends StatefulWidget {
  String? img;
  num? price;

  ContList({super.key, this.img, this.price});

  @override
  State<ContList> createState() => _ContListState();
}

class _ContListState extends State<ContList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 400,
        width: 325,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 2)),
        child: Column(
          children: [
            Container(
              height: 350,
              child: Image.asset("${widget.img}"),
            ),
            Spacer(),
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text(
                    "\$ ${widget.price} ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_outlined,
                    color: Colors.blue,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
