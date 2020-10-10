import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilearning4/utils/HorizontalLIistprice.dart';
import 'package:uilearning4/utils/horizontalbiglistview.dart';
import 'package:uilearning4/utils/horizontallistview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            child: Row(
              children: [
                Text('N',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold)),
                Text('A',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold)),
                Text('D',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                Text('Z',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold)),
    Text('  CREATION',style: TextStyle(color: Colors.redAccent,fontSize: 15),),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
            ),

          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children:[ Container(
          height: 100,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              HorizontalList(img:'images/men.jpg',title: 'MEN'),
              HorizontalList(img:'images/women.jpg',title: 'WOMEN'),
              HorizontalList(img:'images/child.jpg',title: 'CHILD'),
              HorizontalList(img:'images/beauty.jpg',title: 'BEAUTY'),
              HorizontalList(img:'images/shoes.jpg',title: 'SHOES'),
            ],
          ),
        ),
          Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Container(
              height: 320,
              color: Colors.orange,
              child: ListView(

                scrollDirection: Axis.horizontal,
                children: [

                  HorizontalbigListView(img:'images/offer4.jpg' ,),
                  HorizontalbigListView(img: 'images/offer3.jpg',),
                  HorizontalbigListView(img: 'images/offer1.jpg',),
                  HorizontalbigListView(img: 'images/offer2.jpg',),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,child: Container(color: Colors.black12,height: 20,),),
          Padding(padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Container(child: Column(
            children: [
              Align(
                  alignment: Alignment(-0.90,0),
                  child: Text('DEALS OF THE DAY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HorizontalPriceList(img: 'images/fashion1.jpg',desc: 'FLAT ₹400 OFF',),
                    HorizontalPriceList(img: 'images/fashion2.jpg',desc: 'FLAT 50% OFF',),
                    HorizontalPriceList(img: 'images/fashion3.jpg',desc: 'FLAT 30% OFF',),
                    HorizontalPriceList(img: 'images/fashion4.jpg',desc: 'FLAT 55% OFF',),
                  ],
                ),
              )
            ],
          )),)
      ]
      ),
    );
  }
}
