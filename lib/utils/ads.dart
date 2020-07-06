import 'dart:math';

mixin AfrotrendsAds {
  static final Random _random = Random();

  static List<String> _bannerUnitAds = ["ca-app-pub-3940256099942544/2934735716", "ca-app-pub-3940256099942544/6300978111"];
  static List<String> _interstitialUnitAds = ["ca-app-pub-3940256099942544/1033173712", "ca-app-pub-3940256099942544/4411468910"];
  static List<String> _interstitialVideoUnitAds = ["ca-app-pub-3940256099942544/5135589807", "ca-app-pub-3940256099942544/8691691433"];

  static String getBannerAdUnitId() => _bannerUnitAds.elementAt(_random.nextInt(_bannerUnitAds.length));

  static String getInterstitialAdUnitId() => _interstitialUnitAds.elementAt(_random.nextInt(_interstitialUnitAds.length));

  static String getInterstitialVideoUnitAds() => _interstitialVideoUnitAds.elementAt(_random.nextInt(_interstitialVideoUnitAds.length));
}
