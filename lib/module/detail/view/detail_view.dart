import 'package:flutter/material.dart';
import 'package:slicing_ui_5/core.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0, 0.01),
                    colors: [Colors.transparent, Colors.black],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: Image.network(
                  "https://images.unsplash.com/photo-1573790387438-4da905039392?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY4NDkxNTk1NQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ),
              ),
            ),
            Positioned(
              top: 60,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(const MainNavigationView()),
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withAlpha(80),
                          radius: 24,
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 500,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bali, Indonesia",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 24.0,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Nusa Penida (Balinese: ᬦᬸᬲᬧᭂᬦᬶᬤ, romanized: Nusa Penida, lit. 'Penida Island') is an island located near the southeastern Indonesian island of Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan and twelve even smaller islands. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali. It is one of the major tourist attractions among the three Nusa islands.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[100],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            "From",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 28.0,
                          ),
                          Text(
                            "\u00246000",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Book Now",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          InkWell(
                            onTap: () => Get.to(const MoreDetailsView()),
                            child: const Text(
                              "More Details",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
