import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fs_tweet/content/fs_admin_table.dart';
import 'package:fs_tweet/login/login_page.dart';

import '../content/item_public.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Icons.directions))
        ],
        // TODO: logout
      ),
      //  Firestore list view
      body: FirestoreListView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        pageSize: 15,
        query: FirebaseFirestore.instance
            .collection("chats")
            .where("chatters", arrayContainsAny: ['usr1']),
        itemBuilder: (
          BuildContext context,
          QueryDocumentSnapshot<Map<String, dynamic>> document,
        ) {
          FirebaseFirestore.instance
              .collection("chats/${document.id}/messages")
              .get()
              .then((value) {
            for (var element in value.docs) {
              print("Adiu: ${element.id}");
              print("${element.data()["senderId"]}");
            }
          });

          print("${document.id}");
          return ItemPublic(
            publicFData: document,
          );
        },
      ),
    );
  }
}
