import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/constants.dart';

void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          margin: EdgeInsets.only(top: 24.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [
                const Color(0xb5eeedf5),
                const Color(0xbff0eff6),
                const Color(0xfff6f6f9),
                const Color(0xfffcfcfd),
                const Color(0xfffefefe),
                const Color(0xffffffff)
              ],
              stops: [0.0, 0.59, 0.727, 0.811, 0.886, 1.0],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: SvgPicture.asset("assets/images/one.svg"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
                child: Text(
                  'Let\'s Get Started',
                  style: kTextStyleHeading,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Text(
                  'Join Us Now And Enjoy\n Credit Free Shipping\nInstantly',
                  style: kTextStyleDescription,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 64.0),
                child:

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Dot(
                          width: 6.0,
                          height: 6.0,
                          radius: 3.0,
                          color: Color(0x47707070),
                          margin: 18.0,
                        ),
                        Dot(
                          width: 6.0,
                          height: 6.0,
                          radius: 3.0,
                          color: Color(0x47707070),
                          margin: 18.0,
                        ),
                        Dot(
                          width: 8.0,
                          height: 8.0,
                          radius: 4.0,
                          color: Color(0xff6c63ff),
                          margin: 0.0,
                        ),
                      ],
                    ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    CustomButton(
                      label: 'Create Account',
                      color: Color(0xff4f44ff),
                      style: kTextStyleActiveButton,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    CustomButton(
                      label: 'Login',
                      color: Color(0xffffffff),
                      style: kTextStyleNormalButton,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({@required this.label, @required this.color, @required this.style, });
  final String label;
  final Color color;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          label,
          style: style,
          textAlign: TextAlign.center,
        ),
        width: 272.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34.0),
          color: color,
          border: Border.all(width: 1.0, color: Color(0xff4f44ff)),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  Dot({
    @required this.width,
    @required this.height,
    @required this.radius,
    @required this.color,
    @required this.margin,
  });

  final double width;
  final double height;
  final double radius;
  final Color color;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: margin),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.elliptical(radius, radius),
          ),
          color: color,
        ),
      ),
    );
  }
}
