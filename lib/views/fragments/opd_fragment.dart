import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpdFragment extends StatefulWidget {
  const OpdFragment({super.key});

  @override
  State<OpdFragment> createState() => _OpdFragmentState();
}

class _OpdFragmentState extends State<OpdFragment>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        appBar(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),
          ),
        )
      ],
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "OPD",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.add_circle_outline_rounded,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => Get.toNamed("/create-opd"),
        )
      ],
    );
  }
}
