import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isWhite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isWhite?Colors.grey[300]:Colors.grey[700],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('facebook',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey[700],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              size: 25,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              color: Colors.white,
              height: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 22,
                        backgroundImage:
                            AssetImage('assets/images/user_5.jpeg'),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                            height: 44,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(26),
                              border: Border(
                                right: BorderSide(
                                    color: Colors.grey.shade400, width: 2),
                                left: BorderSide(
                                    color: Colors.grey.shade400, width: 2),
                                bottom: BorderSide(
                                    color: Colors.grey.shade400, width: 2),
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 2),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'what\'s on your mind?',
                                hintStyle: TextStyle(color: Colors.grey[700]),
                                border: InputBorder.none,
                              ),
                            )),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.video_call,
                                  color: Colors.redAccent, size: 26),
                              SizedBox(width: 5),
                              Text('Live'),
                            ],
                          ),
                        ),
                        Container(
                            height: 30, width: 1.5, color: Colors.grey[300]),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.photo, color: Colors.green, size: 26),
                              SizedBox(width: 5),
                              Text('Photo'),
                            ],
                          ),
                        ),
                        Container(
                            height: 30, width: 1.5, color: Colors.grey[300]),
                        FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(Icons.location_on,
                                    color: Colors.redAccent, size: 26),
                                SizedBox(width: 5),
                                Text('Check in'),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 180,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem('assets/images/story_5.jpeg',
                      'assets/images/user_5.jpeg', 'user Five'),
                  makeItem('assets/images/story_4.jpeg',
                      'assets/images/user_2.jpeg', 'user Four'),
                  makeItem('assets/images/story_3.jpeg',
                      'assets/images/user_3.jpeg', 'user Three'),
                  makeItem('assets/images/story_2.jpeg',
                      'assets/images/user_4.jpeg', 'user Two'),
                  makeItem('assets/images/story_5.jpeg',
                      'assets/images/user_1.jpeg', 'user One'),
                ],
              ),
            ),
            userPost(
              backgroundImage: 'assets/images/feed_1.jpeg',
              userImage: 'assets/images/user_1.jpeg',
              userName: 'User Three',
              userPost: "Contrary to popular belief, Lorem Ipsum is not simply"
                  " random text. It has roots in a piece of classical Latin "
                  "literature from 45 BC, making it over 2000 years old. Richard McClintock"
                  ", a Latin professor at Hampden-Sydney College in Virginia, looked"
                  " up one of the more obscure Latin words, consectetur, from a Lorem Ipsum ",
            ),
            userPost(
              backgroundImage: 'assets/images/feed_2.jpeg',
              userImage: 'assets/images/user_2.jpeg',
              userName: 'User Two',
              userPost: "Contrary to popular belief, Lorem Ipsum is not simply"
                  " random text. It has roots in a piece of classical Latin "
                  "literature from 45 BC, making it over 2000 years old. Richard McClintock"
                  ", a Latin professor at Hampden-Sydney College in Virginia, looked"
                  " up one of the more obscure Latin words, consectetur, from a Lorem Ipsum ",
            ),
            userPost(
              backgroundImage: 'assets/images/feed_3.jpeg',
              userImage: 'assets/images/user_3.jpeg',
              userName: 'User Three',
              userPost: "Contrary to popular belief, Lorem Ipsum is not simply"
                  " random text. It has roots in a piece of classical Latin "
                  "literature from 45 BC, making it over 2000 years old. Richard McClintock"
                  ", a Latin professor at Hampden-Sydney College in Virginia, looked"
                  " up one of the more obscure Latin words, consectetur, from a Lorem Ipsum ",
            ),
            userPost(
              backgroundImage: 'assets/images/feed_4.jpeg',
              userImage: 'assets/images/user_4.jpeg',
              userName: 'User Three',
              userPost: "Contrary to popular belief, Lorem Ipsum is not simply"
                  " random text. It has roots in a piece of classical Latin "
                  "literature from 45 BC, making it over 2000 years old. Richard McClintock"
                  ", a Latin professor at Hampden-Sydney College in Virginia, looked"
                  " up one of the more obscure Latin words, consectetur, from a Lorem Ipsum ",
            ),
            userPost(
              backgroundImage: 'assets/images/feed_5.jpeg',
              userImage: 'assets/images/user_5.jpeg',
              userName: 'User Three',
              userPost: "Contrary to popular belief, Lorem Ipsum is not simply"
                  " random text. It has roots in a piece of classical Latin "
                  "literature from 45 BC, making it over 2000 years old. Richard McClintock"
                  ", a Latin professor at Hampden-Sydney College in Virginia, looked"
                  " up one of the more obscure Latin words, consectetur, from a Lorem Ipsum ",
            ),
          ],
        ),
      ),
    );
  }

  Widget userPost({backgroundImage, userImage, userName, userPost}) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(userImage),
                        ),
                        const SizedBox(width: 7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Text("1 hr age",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  userPost,
                  style: TextStyle(color: Colors.grey.shade700),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Image(image: AssetImage(backgroundImage))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Stack(children: const [
                          CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 12)),
                        ]),
                        const SizedBox(width: 5),
                        Text('3.0k',style: TextStyle(color: Colors.grey.shade700,
                            fontSize: 12)),
                      ]),
                      Text(
                        '400 Comments',
                        style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                      ),
                    ]))
          ],
        ));
  }

  Widget makeItem(backgroundImage, userImage, userName) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            )),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.2)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 18,
                child: CircleAvatar(
                  backgroundImage: AssetImage(userImage),
                  radius: 16,
                ),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white70),
              )
            ],
          ),
        ),
      ),
    );
  }
}
