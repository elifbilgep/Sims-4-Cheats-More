import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String get bannerUnitId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/1033173712"
      : "ca-app-pub-3940256099942544/1033173712";

  static initialize() {
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

  static BannerAd createBannerAd() {
    BannerAd ad = new BannerAd(
        size: AdSize.largeBanner,
        adUnitId: bannerUnitId,
        listener: BannerAdListener(
          onAdLoaded: (Ad ad) => print("Ad loaded"),
          onAdFailedToLoad: (Ad ad, LoadAdError) {
            ad.dispose();
          },
          onAdOpened: (Ad ad) => print("ad opened"),
          onAdClosed: (Ad ad) => print("on ad closed"),
        ),
        request: AdRequest());
    return ad;
  }
}
