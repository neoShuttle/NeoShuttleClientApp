import 'package:flutter/material.dart';
import 'package:neoshuttle/components/button.dart';
import 'package:neoshuttle/screens/boarding_form.dart';
import 'package:neoshuttle/data/boarding_form.dart' as boarding_forms;

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/onboarding_background.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                logo(),
                const SizedBox(height: 40),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logo(isLarge: true),
                      const SizedBox(height: 10),
                      const Text(
                        'daily commute\nmade\neasy!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 50),
                      ),
                    ],
                  ),
                )),
                Column(
                  children: [
                    const Text('click the buttons to get started!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 15)),
                    const SizedBox(height: 10),
                    customButton(
                        'login',
                        () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoardingForm(
                                    boarding_forms.boardingModels[0])))),
                    customButton('signup', () => {}, isFilled: false),
                    const SizedBox(height: 30)
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Row logo({bool isLarge = false}) {
    double logoFontSize = isLarge ? 40 : 18;
    double sparkIconHeight = isLarge ? 30 : 15;
    double sparkIconOffset = isLarge ? -12 : -5;
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'neo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: logoFontSize,
                      fontWeight: FontWeight.w800)),
              TextSpan(
                  text: 'shuttle',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: logoFontSize,
                      fontWeight: FontWeight.w300)),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Transform.translate(
              offset: Offset(0, sparkIconOffset),
              child: Image.asset("assets/images/spark.png",
                  height: sparkIconHeight)),
        ),
      ],
    );
  }
}
