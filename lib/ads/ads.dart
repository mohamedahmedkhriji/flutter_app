import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quiiz/ads/ad_mang.dart';

class HomePageA extends StatefulWidget {
  const HomePageA({Key? key}) : super(key: key);

  @override
  State<HomePageA> createState() => _HomePageAState();
}

class _HomePageAState extends State<HomePageA> {
  late RewardedAd _rewardedAd;
  bool _isRewardedAdReady = false;
  var _balance = 0;

  @override
  void initState() {
    super.initState();
    _initGoogleMobileAds();
    _loadRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch More Win More'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              'assets/coin.jpg',
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Center(
            child: Text('Your Balance is :',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          Center(
            child: Text('$_balance',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          ElevatedButton(
            onPressed: _isRewardedAdReady ? _showRewardedAd : null,
            child: const Text('Watch Ad'),
          ),
        ],
      ),
    );
  }

  // Google mobile ads function
  Future<void> _initGoogleMobileAds() async {
    await MobileAds.instance.initialize();
  }

  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: AdsManager.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          setState(() {
            _rewardedAd = ad;
            _rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad) {
                _loadRewardedAd();
              },
            );
            _isRewardedAdReady = true;
          });
        },
        onAdFailedToLoad: (error) {
          print('Failed to load $error');
        },
      ),
    );
  }

  // Show rewarded ad
  void _showRewardedAd() {
    _rewardedAd.show(
      onUserEarnedReward: (ad, reward) {
        setState(() {
          _balance += reward.amount.toInt();
        });
      },
    );
  }
}
