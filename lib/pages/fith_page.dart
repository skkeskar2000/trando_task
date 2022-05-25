import 'package:flutter/material.dart';

import '../widget.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusedBody(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FifthPage()));
        },
          progressBar: "assets/image/progressBar5.svg",
          voice: 'Why are you there',
        ),
      ),
    );
  }
}
