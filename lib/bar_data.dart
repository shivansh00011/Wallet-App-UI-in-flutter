import 'package:atm/individual_bar.dart';

class BarData {

  final double Nov;
  final double Dec;
  final double Jan;
  final double Feb;
  final double Mar;
  final double Apr;
  final double May;

  BarData({
    required this.Nov,
    required this.Dec,
    required this.Jan,
    required this.Feb,
    required this.Mar,
    required this.Apr,
    required this.May
  });

  List<IndividualBar> barData = [];

  void intializeBarData(){
    barData = [
      IndividualBar(x: 0, y: Nov),
      IndividualBar(x: 1, y: Dec),
      IndividualBar(x: 2, y: Jan),
      IndividualBar(x: 3, y: Feb),
      IndividualBar(x: 4, y: Mar),
      IndividualBar(x: 5, y: Apr),
      IndividualBar(x: 6, y: May),



    ];
  }

}