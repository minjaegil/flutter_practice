import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/users/widgets/persistent_tab_bar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
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
                    Gaps.v14,
                    FractionallySizedBox(
                      widthFactor: 0.33,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: Sizes.size12,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(Sizes.size4),
                          ),
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Gaps.v14,
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.size32,
                        vertical: Sizes.size10,
                      ),
                      child: Text(
                        "All highlights and where to watch live videos of Minjae",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.link,
                          size: Sizes.size12,
                        ),
                        Gaps.h4,
                        Text(
                          "https://thisisasuperlink.com",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v10,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                // 드래그할 때 키보드 사라지게 하기.
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.zero,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 9 / 12,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 9 / 12,
                      child: FadeInImage.assetNetwork(
                        // fit은 이미지가 어떤식으로 부모요소에 적용될 지 정해줌
                        fit: BoxFit.cover,
                        placeholder: "assets/images/placeholder1.jpeg",
                        image:
                            "https://images.unsplash.com/photo-1672741511537-4ccaa5096b4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                // 드래그할 때 키보드 사라지게 하기.
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size6,
                  vertical: Sizes.size6,
                ),
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Sizes.size10,
                  mainAxisSpacing: Sizes.size10,
                  childAspectRatio: 9 / 20,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 9 / 16,
                      child: FadeInImage.assetNetwork(
                        // fit은 이미지가 어떤식으로 부모요소에 적용될 지 정해줌
                        fit: BoxFit.cover,
                        placeholder: "assets/images/placeholder1.jpeg",
                        image:
                            "https://images.unsplash.com/photo-1672741511537-4ccaa5096b4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                      ),
                    ),
                    Gaps.v8,
                    Text(
                      "${index}d;flkaejwl;fjaklwjeflaweflawefadahfaehfkewa;lfja;lewhfkhwae;kfjqwhflkjqheqlhfkq",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.size14,
                      ),
                    ),
                    Gaps.v5,
                    DefaultTextStyle(
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 13,
                          ),
                          Gaps.h6,
                          const Expanded(
                            child: Text(
                              "Very very very long user name",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Gaps.h6,
                          FaIcon(
                            FontAwesomeIcons.heart,
                            size: Sizes.size16,
                            color: Colors.grey.shade600,
                          ),
                          Gaps.h2,
                          const Text("2.5M"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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