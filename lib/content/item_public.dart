import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';

class ItemPublic extends StatefulWidget {
  final dynamic publicFData;
  ItemPublic({Key? key, required this.publicFData}) : super(key: key);

  @override
  State<ItemPublic> createState() => _ItemPublicState();
}

class _ItemPublicState extends State<ItemPublic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              leading: CircleAvatar(
                child: Text("${widget.publicFData.data()["chatters"][0]}"),
              ),
              title: Text("${widget.publicFData.id}"),
              subtitle: Text("${widget.publicFData.data()}"),
            ),
          ),
        ],
      ),
    );
  }
}
