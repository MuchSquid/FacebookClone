import 'package:flutter/material.dart';
import 'package:test_2/widgets/list_view_builder.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (_) => MyListViewBuilder(),
                );
                Navigator.push(context, route);
              },
              icon: const Icon(
                Icons.login,
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.amber,
            ),
            SizedBox(
              height: 350,
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  //   physics: const BouncingScrollPhysics(),
                  children: [
                    ...List.generate(
                      10,
                      (index) => Container(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(5.0),
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              //height: 150,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
