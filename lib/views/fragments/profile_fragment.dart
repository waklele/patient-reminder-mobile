import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holadoc/views/widgets/rectangle_button.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    const padding = 20.0;
    const textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        children: [
          SizedBox(height: screenWidth * .1),
          Container(
            width: screenWidth - padding * 2,
            height: screenWidth - padding * 2,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(padding)),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=3270&auto=format&fit=crop",
                ),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
          ),
          SizedBox(height: screenWidth * .1),
          const Text("dr. Foo Bar", style: textStyle),
          Text(
            "RS Batam",
            style: textStyle.copyWith(color: Colors.grey),
          ),
          SizedBox(height: screenWidth * .1),
          RectangleButton(
            text: "Edit",
            onPressed: () {},
          ),
          const SizedBox(height: 4),
          RectangleButton(
            text: "Keluar",
            backgroundColor: Colors.red,
            textColor: Colors.white,
            onPressed: () => Get.offAllNamed("/welcome"),
          ),
        ],
      ),
    );
  }
}
