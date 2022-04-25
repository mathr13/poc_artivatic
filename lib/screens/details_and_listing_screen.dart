import 'package:flutter/material.dart';
import 'package:poc_artivatic/controllers/items_controller.dart';

class DetailsAndListingScreen extends StatefulWidget {
  const DetailsAndListingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DetailsAndListingScreenState();
  }
}

class _DetailsAndListingScreenState extends State<DetailsAndListingScreen> {

  final ItemController _itemController = ItemController();

  @override
  void initState() {
    _itemController.fetchItems();
    super.initState();
  }

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