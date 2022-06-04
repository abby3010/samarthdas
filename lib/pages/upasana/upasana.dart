import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:samarthdas_app/components/customAppBar.dart';
import 'package:samarthdas_app/components/displayText.dart';

import '../../components/customListTile.dart';

class UpasanaContent extends StatelessWidget {
  const UpasanaContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('Upasana');

    return Scaffold(
      appBar: SamarthAppBar(title: "Upasana"),
      body: FutureBuilder<DocumentSnapshot>(
        future: collectionReference.doc("upasana").get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: Text("Data does not exist"));
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> dataObj =
            snapshot.data!.data() as Map<String, dynamic>;

            var data = dataObj["data"];
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    title: data[index]["name"],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DisplayText(
                                  name: data[index]['name'], text: data[index]['text'].replaceAll("\\n", "\n"))));
                    },
                  );
                });
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
