import 'package:atm/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class MyBarGraph extends StatelessWidget {
  final List monthlyExpense;
  const MyBarGraph({super.key, required this.monthlyExpense});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(Nov: monthlyExpense[0], Dec: monthlyExpense[1], Jan: monthlyExpense[2], Feb: monthlyExpense[3], Mar: monthlyExpense[4], Apr: monthlyExpense[5], May: monthlyExpense[6]);
    myBarData.intializeBarData();
    return BarChart(
      BarChartData(
        maxY: 600,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTiles))
        ),

        barGroups: myBarData.barData.map((data) => 
        
        BarChartGroupData(x: data.x, barRods: [BarChartRodData(toY: data.y, color: (data.x==2)?Colors.orange:Colors.grey)])).toList()
      ),
    );
        
  }
}
Widget getBottomTiles(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontSize: 10
    
  );
 Widget text;
 switch (value.toInt()) {
   case 0:
     text = const Text('Nov', style: style,);
     
     break;
    case 1:
     text = const Text('Dec', style: style,);
     
     break;
    case 2:
     text = const Text('Jan', style: TextStyle(fontSize: 10, color: Colors.orange),);
     
     break;
    case 3:
     text = const Text('Feb', style: style,);
     
     break;
    case 4:
     text = const Text('Mar', style: style,);
     
     break;
    case 5:
     text = const Text('Apr', style: style,);
     
     break;
    case 6:
     text = const Text('May', style: style,);
     
     break;     
   default:
     text = const Text('', style: style,);
     
     break;  

 }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}