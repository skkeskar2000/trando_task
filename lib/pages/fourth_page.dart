import 'package:flutter/material.dart';
import 'package:trando/pages/fith_page.dart';

import '../widget.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusedBody(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FifthPage()));
        },
          progressBar: "assets/image/progressBar4.svg", voice: 'I got it randomly',
        ),
      ),
    );
  }
}
