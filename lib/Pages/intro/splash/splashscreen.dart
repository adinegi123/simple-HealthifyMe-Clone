import 'package:fitness_app/Pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Slide> slides = [];

  // get onDonePress => print('End of Slides');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(Slide(
      pathImage: "assets/images/pic1.jpg",
      backgroundColor: Colors.white,
    )

        // backgroundColor: const Color(0xfff5a623),
        );
    slides.add(Slide(
        backgroundColor: Colors.white, pathImage: "assets/images/pic2.jpg"));
    slides.add(
      Slide(
        pathImage: "assets/images/pic3.jpg",
        backgroundColor: Colors.white,
      ),
    );
  }

  // List<Widget> renderListCustomTabs() {return tabs;}

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      backgroundColorAllSlides: Colors.green,
      renderNextBtn: Text('Next'),
      renderPrevBtn: Icon(Icons.arrow_back),
      renderDoneBtn: Text('Done'),
      colorActiveDot: Colors.red,
      onDonePress: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => LogIn())),
    );
  }
}
