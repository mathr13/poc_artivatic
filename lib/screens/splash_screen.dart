import 'package:flutter/material.dart';

import '../constants/style_values.dart';
import '../utilities/navigation_utilities.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
} 
class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<Offset> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    NavigationUtilities().waitAndNavigate(context);
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(0.2, 0.4),
      end: const Offset(1, 0.4),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.secondaryBackground,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.info_outlined, color: Colors.white, size: Sizes.largeIconSize,),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "About",
                  style: TextStyles.appLogo,
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) => Center(
              child: SlideTransition(
                position: _animation,
                child: Container(
                  height: 75,
                  color: Colours.secondaryBackground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}