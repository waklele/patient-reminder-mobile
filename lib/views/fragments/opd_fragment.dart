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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                opdItem(),
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

  Widget opdItem() {
    final cardWidth = MediaQuery.of(context).size.width - 40;
    return Container(
      width: cardWidth,
      height: kToolbarHeight * 2.5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: cardWidth * .3,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xffD6F6DE),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Bani",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text(
                  "08123123123",
                  style: TextStyle(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xffF89D3D).withOpacity(.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.calendar_today_outlined,
                              size: 12,
                              color: Color(0xffF89D3D),
                            ),
                          ),
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10)),
                      const TextSpan(
                        text: "February 9, 2024",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xff30D058).withOpacity(.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.schedule_rounded,
                              size: 12,
                              color: Color(0xff30D058),
                            ),
                          ),
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10)),
                      const TextSpan(
                        text: "01:00 - 08:00 PM",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
