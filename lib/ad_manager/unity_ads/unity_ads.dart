import 'package:flutter/material.dart';
import 'package:puzzle/ad_manager/ad_ids.dart';

abstract class InterstitialAd {
  static bool _isAdLoaded = false;

  static Future<void> load() async {
    // Replace with other ad network loading logic or leave empty
    print("Ad loading logic goes here.");
    _isAdLoaded = true; // Mock ad load success
  }

  static void show() {
    if (_isAdLoaded) {
      // Replace with other ad network showing logic or leave empty
      print("Ad showing logic goes here.");
      _isAdLoaded = false; // Reset after showing
    } else {
      print("Ad not loaded.");
    }
  }
}

class BannerAdWidget extends StatelessWidget {
  const BannerAdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with other ad network banner widget or leave empty
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.grey,
      child: Center(
        child: Text(
          "Banner Ad Placeholder",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
