import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_travel_app/views/home/view/home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  List pages = [
    const HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.white),
    Container(color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: 'explore'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/calendar.svg'),
            label: 'explore'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bookmark.svg'),
            label: 'explore'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: 'explore'.tr(),
          ),
        ],
        onTap: (i) {
          pageIndex = i;
          setState(() {});
        },
      ),
    );
  }
}
