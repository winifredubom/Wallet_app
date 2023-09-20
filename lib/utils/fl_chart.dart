import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:wallet_app/utils/styles.dart';




class ChartData {
  final String month;
  final double price;

  ChartData(this.month, this.price);
}


class FiChartPage extends StatefulWidget {
  const FiChartPage({Key? key}) : super(key: key);

  @override
  _FiChartPageState createState() => _FiChartPageState();
}

class _FiChartPageState extends State<FiChartPage> {
  List<Color> gradientColors = [
    const Color(0xff8438FF),
     Colors.white,
  ];
 
 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 400,
        height: 400,
        child: LineChart(
          LineChartData(
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: Colors.white, width: 2
              )
            ),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 1
                );
              },
                drawVerticalLine: true,
              getDrawingVerticalLine: (value){
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 1
                );
              }
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 35,
                  getTitlesWidget: ( context, value) {
                    TextStyle(
                      color: colors.bottomNav_color,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    );
                  }.(value, meta) {
              switch(value.toInt()){
                  case 0:
                      return 'oct';
                  case 4:
                      return 'nov';
                  case 8:
                      return 'sep';
              };
                  }

                ),
              )
            ),
            maxX: 8,
            maxY: 8,
            minY: 0,
            minX: 0,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 0),
                  FlSpot(5, 5),
                  FlSpot(7, 6),
                  FlSpot(8, 4)
                ],
                isCurved: true,
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                      colors:gradientColors.map((color) => color.withOpacity(0.3)).toList() )
                ),
                barWidth: 3,

              ),
            ]
          )
        ),
      ),
    );
  }*/

@override
  Widget build(BuildContext context){
  return Scaffold(
    body: AspectRatio(
        aspectRatio: 1.7,
    child: LineChart(LineChartData(
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 0.5),
            FlSpot(1, 1.5),
            FlSpot(2, 1.5),
            FlSpot(3, 3),
            FlSpot(4, 2)
          ],
          isCurved: true,
          dotData: FlDotData(show: true, getDotPainter: (spots)),
          color: Chart.linearGradient1,
          barWidth: 4,
          belowBarData: BarAreaData(
            show: true,
            color:Colors.purpleAccent
          )
        )
      ],
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 3,
      backgroundColor: Colors.white,
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          axisNameWidget: const Text('x axis'),
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            interval: 1,
            getTitlesWidget: (value, meta){
              String text = '';
              switch (value.toInt()){
                case 0:
                  text = 'Oct';
                  break;
                case 1:
                  text = 'Nov';
                  break;
                case 2:
                  text = 'Dec';
                  break;
                case 3:
                  text = 'Jan';
                  break;
                case 4:
                  text = 'Feb';
                  break;
              }
              return Text(text);
            }
          ),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: Text('Y axis',),
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 40,
          )
        )
      ),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) => FlLine(
          color: Color(gradientColors as int),
          strokeWidth: 0
        ),
        drawVerticalLine: false,
        getDrawingVerticalLine: (value) => FlLine(
          color: Colors.purpleAccent,
          strokeWidth: 0
        )
      ),
      l
    )),),
  );
}
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: AspectRatio(
      aspectRatio: 1.7,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0.5),
                FlSpot(1, 1.5),
                FlSpot(2, 1.5),
                FlSpot(3, 3),
                FlSpot(4, 2),
              ],
              isCurved: true,
              dotData: FlDotData(
                show: false, // Disable default dots
              ),
              color: Colors.purpleAccent,
              barWidth: 4,
              belowBarData: BarAreaData(show: true, color: Colors.purpleAccent),
            )
          ],
          minX: 0,
          maxX: 4,
          minY: 0,
          maxY: 3,
          backgroundColor: Colors.white,
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              axisNameWidget: const Text('x axis'),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 20,
                interval: 1,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 0:
                      return 'Oct';
                    case 1:
                      return 'Nov';
                    case 2:
                      return 'Dec';
                    case 3:
                      return 'Jan';
                    case 4:
                      return 'Feb';
                  }
                  return '';
                },
              ),
            ),
            leftTitles: AxisTitles(
              axisNameWidget: Text('Y axis'),
              showTitles: false,
              reservedSize: 40,
            ),
          ),
          gridData: FlGridData(
            show: false,
            drawHorizontalLine: true,
            drawVerticalLine: false,
            horizontalInterval: 1.0, // Set the grid interval to match the data
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0.5),
                FlSpot(1, 1.5),
                FlSpot(2, 1.5),
                FlSpot(3, 3),
                FlSpot(4, 2),
              ],
              isCurved: true,
              dotData: FlDotData(show: true, getDotTooltip: (spot) {
                // Return a widget to display when a dot is clicked
                return Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Text(
                    'Value: ${spot.y}',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                );
              }),
              color: Colors.purpleAccent,
              barWidth: 4,
              belowBarData: BarAreaData(show: true, color: Colors.purpleAccent),
            ),
          ],
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.blueAccent,
            ),
            touchCallback: (LineTouchResponse touchResponse) {
              // Handle touch interactions here
            },
            touchTooltipPosCallback: (LineChartBarData barData, List<int?> spots) {
              return FlSpot(spots[0]!.toDouble(), barData.spots[spots[0]!].y);
            },
          ),
        ),
      ),
    ),
  );
}


