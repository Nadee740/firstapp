import 'package:flutter/material.dart';

class HorizontalbigListView extends StatefulWidget {
  String img;
  HorizontalbigListView({this.img});
  @override
  _HorizontalbigListViewState createState() => _HorizontalbigListViewState();
}

class _HorizontalbigListViewState extends State<HorizontalbigListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        child: Image.asset(widget.img,fit: BoxFit.fitHeight,),
      ),
    );
  }
}
