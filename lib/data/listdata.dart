import 'package:flutter/material.dart';  // Add this for Image.asset
import 'package:expensess/data/1.dart';  // Make sure this file exists and contains the 'money' class

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '650';
  upwork.time = 'today';
  upwork.Image = 'up.png'; // Image should be stored as a path, not a widget
  upwork.buy = false; // Image should be stored as a path, not a widget

  money starbucks = money();
  starbucks.buy=true;
  starbucks.fee='15';
  starbucks.Image='food.png';
  starbucks.name='resturant ';
  starbucks.time='today';

  money tranfere= money();
  tranfere.buy=true;
  tranfere.fee='100';
  tranfere.Image='Transfer.png';
  tranfere.name='transfer ';
  tranfere.time='Jan 30 ,2024';

  return [upwork,starbucks,tranfere,upwork,starbucks,tranfere];
}
