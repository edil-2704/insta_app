import 'package:flutter/material.dart';
import 'package:instagram_app/main_page_widgets.dart';

class HomePageInstagram extends StatefulWidget {
  const HomePageInstagram({super.key});

  @override
  State<HomePageInstagram> createState() => _HomePageInstagramState();
}

class _HomePageInstagramState extends State<HomePageInstagram> {
  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
  }

  List<String> profileImage = [
    'assets/images/profile_image.png',
    'assets/images/live.png',
    'assets/images/boo.png',
    'assets/images/jack.png',
    'assets/images/lady.png',
    'assets/images/bitmap.png',
    'assets/images/profile_image.png',
    'assets/images/live.png',
    'assets/images/boo.png',
    'assets/images/jack.png',
    'assets/images/lady.png',
    'assets/images/bitmap.png',
  ];

  List<String> postImage = [
    'assets/images/post/post2.png',
    'assets/images/post/post5.png',
    'assets/images/post/post6.png',
    'assets/images/post/post7.png',
    'assets/images/post/post8.png',
    'assets/images/post/post8.png',
    'assets/images/post/post2.png',
    'assets/images/post/post8.png',
    'assets/images/post/post8.png',
    'assets/images/post/post2.png',
  ];

  List<String> postName = [
    'joshua_l',
    'John_',
    'jack_Week@1520',
    'John_Week',
    'John_Week10',
    'lio_messi',
    'John_',
    'jack_Week@1520',
    'John_Week',
    'John_Week10',
    'lio_messi',
    'lio_messi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CommonBottomNavBar(),
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 28,
          width: 105,
        ),
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Image.asset(
            'assets/images/igtc.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 20),
          Image.asset(
            'assets/images/send.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Колонка со сторисами
                  CommonStory(profileImage: profileImage, postName: postName),
                  Divider(),
                  //// Теперь рисуем основную часть с картинками
                  CommonMainPagePart(profileImage: profileImage, postName: postName, postImage: postImage)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

