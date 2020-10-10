import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class HorizontalList extends StatefulWidget {
  String img;
  String title;
  HorizontalList({this.title,this.img});
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,2,8,2),
      child: Column(
        children: [
          CircleAvatar(backgroundImage:AssetImage(widget.img,),minRadius: 40,),
          Text(widget.title)
        ],
      ),
    );
  }
}
