import 'package:flutter/material.dart';
import 'package:youtube_clone/view/data.dart';
import 'package:youtube_clone/view/utils/constants/color_constants.dart';
import 'package:youtube_clone/view/video_screen/video_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 8,
        child: Scaffold(
          backgroundColor: ColorConstants.primaryblack,
          appBar: _build_appbar_tabbar(),
          body: TabBarView(children: [
            Container(
              color: ColorConstants.primaryblack,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "asset/shorts1-removebg-preview.png",
                    height: 90,
                    width: 120,
                  ),
                  _build_shortsgridstate(),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                              videoUrl:
                                  "https://youtu.be/lewSG62kpfs?si=rNzg-2VdEKgLOtCE",
                              caption:
                                  "The Old Feudal Lord: Mangalasherry Neelakandan",
                              details: " 170K views ∙ 1 Month ago",
                              imageUrl: 'asset/first.jpg',
                              channelName: 'teague sparrow',
                              subCount: '100K',
                            ),
                          ));
                    },
                    child: Container(
                        child: Image.asset(
                          videos[0]["thumbnail"],
                          fit: BoxFit.cover,
                        ),
                        height: 200,
                        width: double.infinity,
                        color: ColorConstants.primarywhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(videos[0]["dp"]),
                    ),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      videos[0]["caption"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(
                          videos[0]["channelName"],
                          style: TextStyle(color: ColorConstants.lightwhite),
                        ),
                        Text(
                          videos[0]["views"],
                          style: TextStyle(color: ColorConstants.lightwhite),
                        )
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                              videoUrl:
                                  "https://youtu.be/gJLVTKhTnog?si=v87cE2iQlmZp89Qo",
                              caption: "Anuv Jain - HUSN (Official Video)",
                              details: " 30M views ∙ 8 month ago",
                              imageUrl: 'asset/Anuv Jain-High (800x800).jpg',
                              channelName: 'Anuv Jain',
                              subCount: '2.02M',
                            ),
                          ));
                    },
                    child: Container(
                        child: Image.asset(
                          videos[1]["thumbnail"],
                          fit: BoxFit.cover,
                        ),
                        height: 200,
                        width: double.infinity,
                        color: ColorConstants.primarywhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(videos[1]["dp"]),
                    ),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      videos[1]["caption"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(videos[1]["channelName"],
                            style: TextStyle(color: ColorConstants.lightwhite)),
                        Text(videos[1]["views"],
                            style: TextStyle(color: ColorConstants.lightwhite))
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                              videoUrl:
                                  "https://youtu.be/HRdyfERwQZs?si=BeLCkuvRiD4v-Bft",
                              caption: "Mining 1,000,000 Blocks Alone!",
                              details: " 90M views ∙ 2 year ago",
                              imageUrl: 'asset/MrBeast-High (800x800).jpg',
                              channelName: 'mr beast gaming ',
                              subCount: '45.2M',
                            ),
                          ));
                    },
                    child: Container(
                        child: Image.asset(
                          videos[2]["thumbnail"],
                          fit: BoxFit.fitWidth,
                        ),
                        height: 200,
                        width: double.infinity,
                        color: ColorConstants.primarywhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(videos[2]["dp"]),
                    ),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      videos[2]["caption"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(videos[2]["channelName"],
                            style: TextStyle(color: ColorConstants.lightwhite)),
                        Text(videos[2]["views"],
                            style: TextStyle(color: ColorConstants.lightwhite))
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 250,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: ColorConstants.primaryblack,
                                  context: context,
                                  builder: (context) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.flag_outlined,
                                              color:
                                                  ColorConstants.primarywhite,
                                              size: 25,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              "Report",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.not_interested,
                                              color:
                                                  ColorConstants.primarywhite,
                                              size: 25,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text("Not interested",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: ColorConstants
                                                        .primarywhite))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.feedback_outlined,
                                                color:
                                                    ColorConstants.primarywhite,
                                                size: 25),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text("Report",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(Icons.more_vert)),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(shorts2[index]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.primarywhite),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                              videoUrl:
                                  "https://youtu.be/hOHKltAiKXQ?si=tsXrV2YDClLScneX",
                              caption:
                                  "Hanumankind – Big Dawgs | Ft. Kalmi (Official Music Video) | Def Jam India",
                              details: " 80M views ∙ 1 month ago",
                              imageUrl: 'asset/Hanumankind-High (800x800).jpg',
                              channelName: 'Hanumankind',
                              subCount: '1.3M',
                            ),
                          ));
                    },
                    child: Container(
                        child: Image.asset(
                          videos[3]["thumbnail"],
                          fit: BoxFit.cover,
                        ),
                        height: 200,
                        width: double.infinity,
                        color: ColorConstants.primarywhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(videos[3]["dp"]),
                    ),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      videos[3]["caption"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(videos[3]["channelName"],
                            style: TextStyle(color: ColorConstants.lightwhite)),
                        Text(videos[3]["views"],
                            style: TextStyle(color: ColorConstants.lightwhite))
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.green,
            ),
          ]),
        ));
  }

  Padding _build_shortsgridstate() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: ColorConstants.primaryblack,
                        context: context,
                        builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.flag_outlined,
                                    color: ColorConstants.primarywhite,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Report",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.not_interested,
                                    color: ColorConstants.primarywhite,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Not interested",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: ColorConstants.primarywhite))
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.feedback_outlined,
                                      color: ColorConstants.primarywhite,
                                      size: 25),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Send feedback",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white))
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    icon: Icon(Icons.more_vert)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    shortscaption[index],
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(shorts[index]), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.primarywhite),
        ),
      ),
    );
  }

  AppBar _build_appbar_tabbar() {
    return AppBar(
      leadingWidth: 100,
      leading: SizedBox(
        height: 60,
        width: 50,
        child: Image.asset(
          "asset/YouTube-White-Full-Color-Logo.png",
          fit: BoxFit.cover,
        ),
      ),
      bottom: TabBar(
          indicatorWeight: .1,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: ColorConstants.primarywhite,
          dividerColor: Colors.transparent,
          labelColor: ColorConstants.primaryblack,
          unselectedLabelColor: ColorConstants.primarywhite,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          tabs: [
            Tab(
              icon: Icon(Icons.explore_outlined),
            ),
            Tab(
              child: Container(
                child: Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Trending",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("New to you",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Gaming",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Music",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Food",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Movies",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
          ]),
      backgroundColor: ColorConstants.primaryblack,
      actions: [
        Icon(
          Icons.cast,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.notifications_outlined,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.search,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
