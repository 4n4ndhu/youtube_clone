import 'package:flutter/material.dart';
import 'package:youtube_clone/view/data.dart';
import 'package:youtube_clone/view/utils/constants/color_constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  final String videoUrl;
  final String caption;
  final String details;
  final String imageUrl;
  final String channelName;
  final String subCount;

  VideoScreen(
      {required this.videoUrl,
      required this.caption,
      required this.details,
      required this.imageUrl,
      required this.channelName,
      required this.subCount});

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Extract video ID from the URL
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: YoutubePlayerFlags(
        forceHD: true,
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  widget.caption,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primarywhite),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.details,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(widget.imageUrl)),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.channelName,
                      style: TextStyle(
                          color: ColorConstants.primarywhite,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.subCount,
                      style: TextStyle(color: ColorConstants.lightwhite),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primarywhite,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Subscribe"),
                      )),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_outlined,
                                size: 24,
                                color: ColorConstants.lightwhite,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    color: ColorConstants.lightwhite,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                size: 24,
                                Icons.thumb_down_outlined,
                                color: ColorConstants.lightwhite,
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_outward,
                                    color: ColorConstants.lightwhite),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Remix",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Thanks",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.content_cut_outlined,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Clip",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bookmark_outlined,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Save",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.flag_outlined,
                                  color: ColorConstants.lightwhite,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Report",
                                  style: TextStyle(
                                      color: ColorConstants.primarywhite,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstants.lightblack,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightblack,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Comments",
                              style: TextStyle(
                                  color: ColorConstants.primarywhite,
                                  fontSize: 15),
                            ),
                            SizedBox(width: 5),
                            Text("3",
                                style: TextStyle(
                                    color: ColorConstants.lightwhite)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Add a comment...",
                                      style: TextStyle(
                                          color: ColorConstants.lightwhite),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff313131),
                                    borderRadius: BorderRadius.circular(35)),
                                height: 30,
                                width: double.infinity,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                  color: ColorConstants.primarywhite,
                ),
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
                  style: TextStyle(color: ColorConstants.primarywhite),
                ),
                subtitle: Wrap(
                  children: [
                    Text(videos[3]["channelName"]),
                    Text(videos[3]["views"])
                  ],
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
