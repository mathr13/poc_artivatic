import 'package:flutter/material.dart';
import 'package:poc_artivatic/controllers/items_controller.dart';

import '../constants/style_values.dart';
import 'widgets/about_item_widget.dart';

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
    return Scaffold(
      backgroundColor: Colours.secondaryBackground,
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text("title goes here", style: TextStyles.headline1,),
            ).withPadding(Paddings.verticalPadding3),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 0,
                itemBuilder: (context, index) => AboutItemWidget(
                  title: "title",
                  description: "description",
                  imageUrl: index.toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}