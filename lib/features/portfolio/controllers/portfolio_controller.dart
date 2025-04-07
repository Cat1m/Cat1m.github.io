import 'package:flutter/material.dart';

class PortfolioController {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    _currentIndex = value;
  }

  void dispose() {
    // Dispose any resources if needed
  }
}
