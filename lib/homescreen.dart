import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepet_app_deneme/basket.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepet ürün miktarı "),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Basket(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 30),
              child: Icon(
                Icons.shopping_basket,
                size: 40,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 330,
            width: 400,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                  ),
                  width: 300,
                  height: 80,
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Container(
                              width: 40,
                              height: 40,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 150,
                            child: Text(
                              "ürün ismi",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(70)),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
