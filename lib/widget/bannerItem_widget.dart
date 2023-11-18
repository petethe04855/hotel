import 'package:flutter/material.dart';
import 'package:hotel/models/image_page_view.dart';

class BannerItemWidget extends StatelessWidget {
  final ImagePageView imageView;
  const BannerItemWidget({
    required this.imageView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          image: NetworkImage(imageView.ImageUrl),
          fit: BoxFit.cover, // ปรับตามความต้องการ
        ),
      ),
    );
  }
}
