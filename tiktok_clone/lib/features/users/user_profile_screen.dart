import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text('MJ'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.gear,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 30,
                foregroundColor: Colors.teal,
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "@mj_for_minjae",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size16,
                    ),
                  ),
                  Gaps.h5,
                  FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: Sizes.size14,
                    color: Colors.blue.shade500,
                  ),
                ],
              ),
              Gaps.v20,
              SizedBox(
                height: Sizes.size40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "97",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size16,
                          ),
                        ),
                        Gaps.v3,
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      // needs height of its father; that's why we wrapped row with sizedBox
                      color: Colors.grey.shade300,
                      width: Sizes.size32,
                      thickness: Sizes.size1,
                      indent: 6,
                      endIndent: 6,
                    ),
                    Column(
                      children: [
                        const Text(
                          "10M",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size16,
                          ),
                        ),
                        Gaps.v3,
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      // needs height of its father; that's why we wrapped row with sizedBox
                      color: Colors.grey.shade300,
                      width: Sizes.size32,
                      thickness: Sizes.size1,
                      indent: 6,
                      endIndent: 6,
                    ),
                    Column(
                      children: [
                        const Text(
                          "196.3M",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size16,
                          ),
                        ),
                        Gaps.v3,
                        Text(
                          "Likes",
                          style: TextStyle(
                            color: Colors.grey.shade500,
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
      ],
    );
  }
}



/* 
CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          //floating: true, // scroll up 할 때 app bar 보이게 하기
          //snap: true, // 살짝 scroll up할때 app bar 전체 보이게
          pinned: true, // 내릴때 상단바 고정
          stretch: true,
          collapsedHeight: 80,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Profile'),
            background: Image.asset(
              "assets/images/placeholder1.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            childCount: 50,
            (context, index) => Container(
              color: Colors.amber[100 * (index % 9)],
              child: Text("item $index"),
            ),
          ),
          itemExtent: 100,
        ),
        SliverPersistentHeader(
          delegate: CustomDelegate(),
          pinned: true,
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              color: Colors.amber[100 * (index % 9)],
              child: Text("item $index"),
            ),
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: Sizes.size20,
            crossAxisSpacing: Sizes.size20,
          ),
        ),
      ],
    ); */

   /*  class CustomDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.indigo,
      child: const FractionallySizedBox(
        heightFactor: 1,
        child: Center(
          child: Text("title"),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
} */