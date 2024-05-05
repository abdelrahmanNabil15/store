import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/values_manager.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls; // List of image URLs
  final double imageHeight; // Desired height of the slider images

  const ImageSlider({super.key,
    required this.imageUrls,
    required this.imageHeight,
  });

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0; // Track current slide index

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   const EdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(AppSize.s10),

      ),
      child: Stack(
        children: [
          // Image slider
          SizedBox(
            height: widget.imageHeight,
            child: PageView.builder(
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemCount: widget.imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(AppPadding.p8 ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    child: Image.asset(

                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          // Custom indicator dots
          Positioned(
            bottom: 10.0, // Adjust positioning
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imageUrls.asMap().entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _currentIndex == entry.key
                          ? ColorManager.colorPrimaryLight // Active dot color
                          : ColorManager.colorGrey1, // Inactive dot color
                      shape: BoxShape.circle,
                    ),
                    width: _currentIndex == entry.key ? 8.0 : 6.0, // Adjust dot size
                    height: _currentIndex == entry.key ? 8.0 : 6.0, // Adjust dot size
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
