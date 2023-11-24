import 'package:flutter/material.dart';

import 'search_results.dart';

class Categores extends StatefulWidget {
  const Categores({super.key});

  @override
  State<Categores> createState() => _CategoresState();
}

class _CategoresState extends State<Categores> {
  @override
  Widget build(BuildContext context) {
    var women;
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) {
      //           return Homepage();
      //         },
      //       ),
      //     );
      //   },
      //   child: Icon(Icons.card_travel),
      // ),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 140),
            child: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search, color: Colors.black, size: 25),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          "WOMEN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "HOME",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                      ),
                      height: 30,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "CATEGORIES",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 2, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    child: Center(
                      child: Text(
                        "BRANDS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: women.map(
                (e) {
                  dynamic? names = e['name'];
                  dynamic? images = e['img'];
                  dynamic? colorsCon = e['color'];
                  return BoxCon(
                    name: names,
                    img: images,
                    colorss: colorsCon,
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class Homepage {}

class BoxCon extends StatefulWidget {
  dynamic? name;
  dynamic? img;
  dynamic? colorss;

  BoxCon({super.key, this.img, this.name, this.colorss});

  @override
  State<BoxCon> createState() => _BoxConState();
}

class _BoxConState extends State<BoxCon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.colorss,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "${widget.name}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Container(
                  height: 115,
                  margin: EdgeInsets.only(right: 5),
                  child: Image.asset(
                    "${widget.img}",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
