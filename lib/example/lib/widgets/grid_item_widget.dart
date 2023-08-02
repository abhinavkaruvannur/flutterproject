
import 'package:flutter/material.dart';
import 'package:flutterproject/example/lib/constants/dimens.dart';

class GridItem extends StatelessWidget {
  const GridItem({required this.image, Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.paddingSmall,
        vertical: Dimens.paddingSmall,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
