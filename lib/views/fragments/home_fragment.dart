import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holadoc/controllers/home_controller.dart';
import 'package:holadoc/views/widgets/rectangle_button.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment>
    with AutomaticKeepAliveClientMixin {
  final homeController = Get.put(HomeController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    homeController.fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    const padding = 20.0;
    final cardWidth = MediaQuery.of(context).size.width - 40;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        appBar(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kMinInteractiveDimension / 2),
                Container(
                  width: cardWidth,
                  height: kToolbarHeight * 3,
                  padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(padding / 2)),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: double.maxFinite,
                        width: cardWidth * .3,
                        child: Image.asset(
                          "assets/images/person_wearing_white_coat.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Input Data Kunjungan Pasien",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RectangleButton(
                              text: "Mulai isi Data OPD",
                              backgroundColor: const Color(0xFF376BF1),
                              elevation: 0,
                              onPressed: () => Get.toNamed("/create-opd"),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 14),
                      // )
                    ],
                  ),
                ),
                const SizedBox(height: kToolbarHeight / 2),
                const Text(
                  "Daftar Kunjungan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: ListTile(
        contentPadding: EdgeInsets.zero,
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
          "Halo, dr. Foo Bar",
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
}
