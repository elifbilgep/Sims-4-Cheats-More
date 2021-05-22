import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static InterstitialAd _interstitialAd;

  static String get bannerUnitId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/6300978111"
      : "ca-app-pub-3940256099942544/6300978111";

  static String get interstitialId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/1033173712"
      : "ca-app-pub-3940256099942544/1033173712";

  static initialize() {
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

  // ignore: missing_return
  static BannerAd createBannerAd() {
    try {
      BannerAd ad = new BannerAd(
          size: AdSize.largeBanner,
          adUnitId: bannerUnitId,
          listener: AdListener(
              onAdLoaded: (Ad ad) => print("Ad loaded"),
              onAdFailedToLoad: (Ad ad, loadAdError) {
                ad.dispose();
              },
              onAdOpened: (Ad ad) => print("ad opened"),
              onAdClosed: (Ad ad) {
                print("on ad closed");
              },
              onApplicationExit: (Ad ad) {
                print("on ad closed");
              }),
          request: AdRequest());
      return ad;
    } catch (e) {
      print("Hata: " + e.toString());
    }
  }

  static InterstitialAd createInterstitialAd() {
    
      return InterstitialAd(
          adUnitId: interstitialId,
          listener: AdListener(
            onAdLoaded: (Ad ad) => _interstitialAd.show(),
            onAdFailedToLoad: (Ad ad, loadAdError) {
              ad.dispose();
            },
            onAdOpened: (Ad ad) => print("ad opened"),
            onAdClosed: (Ad ad) => _interstitialAd.dispose(),
            onApplicationExit: (Ad ad) => _interstitialAd.dispose(),
          ),
          request: AdRequest());
    
  }

  static void showInterstitialAd() {
    try {
      _interstitialAd?.dispose();
      _interstitialAd = null;

      if (_interstitialAd == null) {
        _interstitialAd = createInterstitialAd();
      }

      _interstitialAd.load();
    } catch (e) {
      print("Hata: " + e.toString());
    }
  }
}
