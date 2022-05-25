import 'package:flutter/material.dart';
import 'package:trando/pages/third_page.dart';

import '../widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusedBody(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
        },
          progressBar: "assets/image/progressBar2.svg",
          voice: 'It’s a real bargain',
        ),
      ),
    );
  }
}
