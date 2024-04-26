import 'package:flutter/material.dart';
import 'package:store/core/util/asset_manger.dart';
import 'package:store/core/util/values_manager.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({super.key, required this.imageAssetName});
 final String  imageAssetName;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: AppSize.s190,
      height: AppSize.s190,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imageAssetName ), // Replace with your filename
          fit: BoxFit.cover, // Fills the container (ensures circular shape)
        ),
      ),
    );
  }
}
