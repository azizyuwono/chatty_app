import 'package:chatty_app/widgets/group.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: blueColor,
        body: SafeArea(
          bottom: false,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/profile_pic.png',
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(
                      color: blueLightColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                        color: whiteColor),
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleStyle,
                        ),
                        const Group(
                          title: 'Joshuer',
                          imageUrl: 'assets/pic1.png',
                          subtitle: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          unread: true,
                        ),
                        const Group(
                          title: 'Gabriella',
                          imageUrl: 'assets/pic2.png',
                          subtitle: 'I saw it clearly and mig...',
                          time: '2:30',
                          unread: false,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: titleStyle,
                        ),
                        const Group(
                          title: 'Jakarta Fair',
                          imageUrl: 'assets/jf.png',
                          subtitle: 'Love them',
                          time: '11:11',
                          unread: true,
                        ),
                        const Group(
                          title: 'Angga',
                          imageUrl: 'assets/a.png',
                          subtitle: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                        const Group(
                          title: 'Bentley',
                          imageUrl: 'assets/b.png',
                          subtitle: 'The car which does not...',
                          time: '7:11',
                          unread: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
