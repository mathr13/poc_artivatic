import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Obx(
        () => SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(_itemController.aboutItems?.title ?? '', style: TextStyles.headline1,),
              ).withPadding(Paddings.verticalPadding3),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _itemController.aboutItems?.items.length,
                  itemBuilder: (context, index) => AboutItemWidget(
                    title: _itemController.aboutItems?.items[index].title ?? '*no title available*',
                    description: _itemController.aboutItems?.items[index].description ?? '*no description available*',
                    imageUrl: _itemController.aboutItems?.items[index].imageHref ?? 'NA',
                  ),
                ),
              ),
            ],
          ),
        ).withProgressIndicator(_itemController.showProgressIndicator.value),
      ),
    );
  }
}