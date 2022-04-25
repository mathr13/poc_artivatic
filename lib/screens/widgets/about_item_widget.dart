import 'package:flutter/material.dart';

import '../../constants/style_values.dart';

class AboutItemWidget extends StatelessWidget {
  
  final String title;
  final String description;
  final String imageUrl;

  const AboutItemWidget({Key? key, required this.title, required this.description, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colours.primaryBackground, width: 3),
        borderRadius: BorderRadiuses.borderRadius3
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              imageUrl,
              errorBuilder: (context, error, stackTrace) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.running_with_errors_sharp, color: Colours.primaryText,).withPadding(Paddings.verticalPadding3),
                  const Text("unable to fetch image", style: TextStyles.lightSubtitle2,),
                ],
              ),
            )
          ).withPadding(Paddings.horizontalPadding2),
          Text(
            title,
            style: TextStyles.headline2,
          ).withPadding(Paddings.padding2),
          Text(
            description,
            style: TextStyles.lightSubtitle1,
          ).withPadding(Paddings.horizontalPadding2),
        ],
      ).withPadding(Paddings.verticalPadding2),
    ).withPadding(Paddings.padding1);
  }
}