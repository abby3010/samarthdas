import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:samarthdas_app/components/customAppBar.dart';
import 'package:samarthdas_app/components/customListTile.dart';
import 'package:samarthdas_app/pages/dasbodh/dashak.dart';

class Dasbodh extends StatelessWidget {
  const Dasbodh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference dasbodhRef =
        FirebaseFirestore.instance.collection('Dasbodh');

    return Scaffold(
      appBar: SamarthAppBar(title: "Dasbodh"),
      body: FutureBuilder<DocumentSnapshot>(
        future: dasbodhRef.doc("dashak_list").get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: Text("Data does not exist"));
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;

            var dashak = data["dashak_names"];
            return ListView.builder(
                itemCount: dashak.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    title: dashak[index],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dashak(
                                    dashakId: dashak[index],
                                  )));
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
