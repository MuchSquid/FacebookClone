import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final multicontainers = List.generate(
      18,
      (index) => Container(
        color: Colors.primaries[index],
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: Text("$index"),
      ),
    );
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const FlutterLogo(
                    size: 100,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: multicontainers,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                // height: 500,
                child: SingleChildScrollView( 
                  keyboardDismissBehavior: // quita el texto cuando se hace scroll
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(),
                      ),
                      ...multicontainers,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
