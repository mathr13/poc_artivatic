import 'package:flutter/material.dart';

class DetailsAndListingScreen extends StatefulWidget {
  const DetailsAndListingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DetailsAndListingScreenState();
  }
}

class _DetailsAndListingScreenState extends State<DetailsAndListingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Details & Listing Screen',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}