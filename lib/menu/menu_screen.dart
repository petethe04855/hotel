import 'package:flutter/material.dart';
import 'package:hotel/models/image_page_view.dart';
import 'package:hotel/widget/bannerItem_widget.dart';
import 'package:hotel/widget/indicator_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late PageController _pageController;

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: PageView.builder(
                itemCount: imagePageView.length,
                pageSnapping: true,
                controller: PageController(viewportFraction: 1),
                onPageChanged: (page) {
                  setState(
                    () {
                      activePage = page;
                    },
                  );
                },
                itemBuilder: (context, pagePosition) {
                  var banner = imagePageView[pagePosition];
                  var _scale = _pageController == pagePosition ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                    duration: Duration(milliseconds: 350),
                    curve: Curves.ease,
                    child: BannerItemWidget(
                      imageView: banner,
                    ),
                    tween: Tween(begin: _scale, end: _scale),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  imagePageView.length,
                  (index) => IndicatorWidget(
                      imageSide: activePage == index ? true : false),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 6,
            child: BoxMeun(),
          ),
        ],
      ),
    );
  }

  Widget BoxMeun() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height *
              0.7, // ลดความสูงของ Container ด้านล่าง
          decoration: const BoxDecoration(
            color: Color(0xAAB8F2E6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 170,
                        height: 170,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 170,
                        height: 170,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: double.infinity,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
