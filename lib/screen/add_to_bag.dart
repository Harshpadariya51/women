import 'package:flutter/material.dart';

class DitailPage extends StatefulWidget {
  String? img;
  String? name;
  num? price;
  String? info;
  String? wash;

  DitailPage(
      {super.key, this.img, this.name, this.price, this.info, this.wash});

  @override
  State<DitailPage> createState() => _DitailPageState();
}

class _DitailPageState extends State<DitailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: Text(
            "ADD TO CART",
            style: TextStyle(fontSize: 15),
          )),
      appBar: AppBar(
        actions: [
          Icon(Icons.favorite_outline_rounded),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.account_circle),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            height: 450,
            width: double.infinity,
            color: Colors.white,
            child: Image.asset('${widget.img}'),
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "AX Paris Short Sleeve\n",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextSpan(
                          text: "\$ ${widget.price}",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                        alignment: Alignment(0, 0),
                        child: Text(
                          "INFO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        alignment: Alignment(0, 0),
                        child: Text(
                          "SIZE CHART",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "MATERIALS\n",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "${widget.info}\n\n",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                            ),
                            TextSpan(
                              text: "WASH INSTRUCTOIN\n",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: "${widget.wash}",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black45))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
