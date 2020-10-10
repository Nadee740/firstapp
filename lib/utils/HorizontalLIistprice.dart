import 'package:flutter/material.dart';

class HorizontalPriceList extends StatefulWidget {
  String img;
  String desc;
  HorizontalPriceList({this.img,this.desc});
  @override
  _HorizontalPriceListState createState() => _HorizontalPriceListState();
}

class _HorizontalPriceListState extends State<HorizontalPriceList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        color: Colors.black12,
        child: Column(
          children: [ClipRRect(
            child: Image.asset(widget.img,fit: BoxFit.fitHeight,height: 160,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,8,0,0),
            child: Text(widget.desc,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          )
          ],
        ),
      ),
    );
  }
}
