import 'package:flutter/material.dart';

class CommonMainPagePart extends StatelessWidget {
  const CommonMainPagePart({
    super.key,
    required this.profileImage,
    required this.postName,
    required this.postImage,
  });

  final List<String> profileImage;
  final List<String> postName;
  final List<String> postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headr
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage(profileImage[index]),
                  ),
                ),
                Text(postName[index]),
                const SizedBox(width: 7),
                const Icon(
                  Icons.verified,
                  color: Color(0xff3897F0),
                  size: 12,
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            Image.asset(postImage[index]),
            //Иконки по постом
            CommonUnderPostIconCard(),
            //Тексты для поста
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(text: 'Liked by '),
                        TextSpan(
                          text: postName[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: '  and...'),
                        const TextSpan(
                          text: ' others',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: postName[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                            text:
                                '   The game in Japan was amazing and I want to share some photos...'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'View all 20 comments',
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Row(
                    children: [
                      Text(
                        '19 September',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Show a translation',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonUnderPostIconCard extends StatelessWidget {
  const CommonUnderPostIconCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_border_outlined),
        ),
      ],
    );
  }
}

/// иконки и картинки инста сторис
class CommonStory extends StatelessWidget {
  const CommonStory({
    super.key,
    required this.profileImage,
    required this.postName,
  });

  final List<String> profileImage;
  final List<String> postName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Row(
        children: List.generate(
          profileImage.length,
          (index) => Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(profileImage[index]),
                ),
                const SizedBox(height: 10),
                Text(
                  postName[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Нижние иконки инстаграмма
class CommonBottomNavBar extends StatelessWidget {
  const CommonBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ondemand_video,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_travel,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_3_rounded,
            ),
          ),
        ],
      ),
    );
  }
}

/// Объясните модельки


// class StoryAvatarModel {
//   final String title;
//   final String imageUrl;

//   StoryAvatarModel({required this.title, required this.imageUrl});
// }

// List<StoryAvatarModel> storyList = [
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
//   StoryAvatarModel(
//     title: 'testTitle',
//     imageUrl: 'assets/images/foto_main.png',
//   ),
// ];

// List<StoryAvatarModel> policeList = [
//   StoryAvatarModel(title: 'testTitle', imageUrl: 'assets/images/...'),
//   StoryAvatarModel(title: 'testTitle', imageUrl: 'assets/images/...'),
//   StoryAvatarModel(title: 'testTitle', imageUrl: 'assets/images/...'),
//   StoryAvatarModel(title: 'testTitle', imageUrl: 'assets/images/...'),
// ];
