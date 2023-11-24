import 'package:flutter/material.dart';
import 'package:women/screen/catigreies_page.dart';

import 'screen/search_results.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ));
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      "HOME",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.blue),
                    ),
                  ),
                  height: 30,
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Categores();
                        },
                      ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "CATEGORIES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black38),
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
                      "BRANDS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                  ),
                  height: 30,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  child: Image.asset("img/1.png",
                      fit: BoxFit.cover, alignment: Alignment.bottomRight),
                  height: 350,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 50),
                child: Text(
                  "Autumn '18",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
              left: 25,
              bottom: 80,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset("img/2.png", fit: BoxFit.cover),
                    height: 190,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Image.asset("img/3.png", fit: BoxFit.cover),
                    height: 190,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Homepage();
              },
            ),
          );
        },
        child: Icon(Icons.card_travel),
      ),
    );
  }
}
