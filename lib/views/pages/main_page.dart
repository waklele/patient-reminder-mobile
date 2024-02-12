import 'package:flutter/material.dart';
import 'package:holadoc/views/fragments/home_fragment.dart';
import 'package:holadoc/views/fragments/opd_fragment.dart';
import 'package:holadoc/views/fragments/profile_fragment.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  final pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeFragment(),
            OpdFragment(),
            ProfileFragment(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: (index) {
          pageController.jumpToPage(index);
          setState(() => currentIndex = index);
        },
        items: [
          navigationItem(Icons.home_outlined, currentIndex == 0),
          navigationItem(Icons.assignment_outlined, currentIndex == 1),
          navigationItem(Icons.account_circle_outlined, currentIndex == 2),
        ],
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=3270&auto=format&fit=crop"),
          ),
        ),
        title: const Text(
          "Halo, Foo Bar",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: RichText(
          text: const TextSpan(
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(
                  Icons.location_on_rounded,
                  color: Colors.red,
                  size: 8,
                ),
              ),
              TextSpan(
                text: " RS Batam",
                style: TextStyle(fontSize: 10, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem navigationItem(IconData iconData, bool isSelected) {
    return BottomNavigationBarItem(
      label: "",
      icon: Container(
        width: kMinInteractiveDimension,
        height: kMinInteractiveDimension,
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor : null,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(iconData),
      ),
    );
  }
}
