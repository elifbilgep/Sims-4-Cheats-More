import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:sims4_cheats/controller/fetch.dart';

import '../../controller/admob.dart';
import '../components/cheats_category_boxes.dart';
import '../components/sliver_app_cheats_category.dart';

class Cheats extends StatelessWidget {
  List cheatCategoryList = [];

  @override
  Widget build(BuildContext context) {
    var categoryNames =
        Provider.of<FetchData>(context, listen: false).readData(context);
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: AdWidget(
          key: UniqueKey(),
          ad: AdMobService.createBannerAd()..load(),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: FutureBuilder(
          future: categoryNames,
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(child: CircularProgressIndicator());
            }
            cheatCategoryList = snapshot.data;
            return CustomScrollView(
              slivers: [
                SliverAppBarCheatsCategory(
                  text: "Cheats",
                ),
                CheatsCategoryBoxes(cheatCategoryList: cheatCategoryList)
              ],
            );
          },
        ),
      ),
    );
  }
}
