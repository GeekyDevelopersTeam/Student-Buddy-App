import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  const HomescreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student View'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const MyStatelessWidget(),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                accountName: Text(
                  "User",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("user@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "U",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text(' Customer Support Chat'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text(' Wallet Transactions '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Order History '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Astromall '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Get Report '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Chat with Astrologers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble),
              title: const Text('Chat with Counsellors'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Deawer
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <CustomListItem>[
        CustomListItem(
          title: 'Budget & Expenses',
          user: 'Manage Budget and Expenses',
          topic: 'Daily Expense',
          viewCount: 999000,
          thumbnail: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/sample1.jpeg',
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomListItem(
          title: 'What to Cook',
          user: 'Recommends Breakfast on the basis of food items availabale',
          topic: 'Breakfast, Lunch, Snacks and Dinner',
          viewCount: 884000,
          thumbnail: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/sample2.jpeg',
                ),
              ),
            ],
          ),
        ),
        CustomListItem(
          title: 'Todo',
          user: 'Manage Assignments',
          topic: 'Sync Calendar',
          viewCount: 999000,
          thumbnail: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/sample1.jpeg',
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomListItem(
          title: 'GROCERY LIST',
          user: 'LIST',
          topic: 'Needs',
          viewCount: 999000,
          thumbnail: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/sample1.jpeg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.topic,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String topic;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: thumbnail,
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '$viewCount views',
                    style: const TextStyle(fontSize: 10.0),
                  ),
                ],
              ),
              Expanded(
                flex: 3,
                child: _VideoDescription(
                  title: title,
                  user: user,
                  viewCount: viewCount,
                  topic: topic,
                ),
              ),
              Column(
                children: [
                  const Icon(
                    Icons.verified_outlined,
                    color: Colors.green,
                    size: 16.0,
                  ),
                  TextButton(
                      child: Text("Chat".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.green)))),
                      onPressed: () => null),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
    required this.topic,
  }) : super(key: key);

  final String title;
  final String topic;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            topic,
            style: const TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
        ],
      ),
    );
  }
}
