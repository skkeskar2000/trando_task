import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReusedBody extends StatelessWidget {
  const ReusedBody({
    Key? key, required this.onTap, required this.progressBar, required this.voice,
  }) : super(key: key);
  final GestureTapCallback onTap;
  final String progressBar;
  final String voice;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0,left: 5.0,right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/image/cross.svg",
                height: 20.0,
              ),
              SvgPicture.asset(
                progressBar,
                height: 20.0,
              ),
              SvgPicture.asset(
                "assets/image/Star.svg",
                height: 30.0,
              ),
              const Text(
                "0",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                ),
              )
            ],
          ),
        ),
        Column(
          children: const [
            Text(
              "Just listen  the sentence carefully",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "(question will be asked in the end)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              voice,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Image.asset("assets/image/sound.png",
              height: 50.0,
            ),
          ],
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15.0),
            ),
            
            margin: const EdgeInsets.only(bottom: 50.0),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0,vertical: 10.0),
              child: Text("Next",style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),),
            ),
          ),
        ),
      ],
    );
  }
}
