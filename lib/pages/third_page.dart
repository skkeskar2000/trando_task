import 'package:flutter/material.dart';

import '../widget.dart';
import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusedBody(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForthPage()));
        },
          progressBar: "assets/image/progressBar3.svg",
          voice: 'That’s a steel',
        ),
      ),
    );
  }
}
