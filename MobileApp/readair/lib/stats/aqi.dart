import 'package:flutter/material.dart';

class AQIPage extends StatefulWidget {
  @override
  State<AQIPage> createState() => _AQIPageState();
}

class _AQIPageState extends State<AQIPage> {
<<<<<<< Updated upstream
=======
  final Random _random = Random();
  List<FlSpot> generateRandomData() {
    return List.generate(
        10, (index) => FlSpot(index.toDouble(), _random.nextInt(90) + 10.0));
  }

  int AQIcurrentValue = 32;
  int AQIhour = 50;
  int AQImax = 70;
  int AQImin = 21;

  Color? AQIColor(int value) {
    if (value <= 50) {
      return Color.fromARGB(255, 48, 133, 56);
    } else if (value > 50 && value <= 100) {
      return Color.fromARGB(255, 229, 193, 13);
    } else if (value > 101 && value <= 150) {
      return Color.fromARGB(255, 229, 114, 13);
    } else if (value > 151 && value <= 250) {
      return Color.fromARGB(255, 217, 19, 4);
    } else {
      return Color.fromARGB(255, 121, 0, 0);
    }
  }

  String AQImessage(int value) {
    if (value <= 50) {
      return "Good";
    } else if (value > 50 && value <= 100) {
      return "Moderate";
    } else if (value > 101 && value <= 150) {
      return "Moderately Bad";
    } else if (value > 151 && value <= 250) {
      return "Unhealthy";
    } else {
      return "Dangerous";
    }
  }
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("AQI"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
<<<<<<< Updated upstream
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('AQI: 82',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text('The Air Quality is Normal'),
                  trailing: Container(
                    width: 80,
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.6, // Example value
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.orange),
                            backgroundColor: Colors.grey[300],
                          ),
=======
            const SizedBox(height: 10), //Spacing between the "boxes"
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: AQIColor(AQIcurrentValue),
                child: ListTile(
                  title: Center(
                      child: Text('AQI', style: TextStyle(fontSize: 25))),
                  subtitle: Center(
                      child: Text('$AQIcurrentValue',
                          style: TextStyle(fontSize: 60))),
                  textColor: Colors.white70,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(2.0),
              child: ListTile(
                title: Center(
                    child: Text('The AQI is ${AQImessage(AQIcurrentValue)}',
                        style: TextStyle(fontSize: 25))),
              ),
            ),

            const Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),

            const Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                title: Center(
                    child:
                        Text('24 Hour Span', style: TextStyle(fontSize: 30))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            if (value % 10 == 0)
                              return Text('${value.toInt()}');
                            return Text('');
                          },
                          reservedSize: 40,
>>>>>>> Stashed changes
                        ),
                        SizedBox(width: 5),
                        Text('medium', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ),
              ),
<<<<<<< Updated upstream
=======
            ),

            const Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),

            const Padding(
              padding: EdgeInsets.all(2.0),
              child: ListTile(
                title: Center(
                    child: Text('Average Over Past 24hrs',
                        style: TextStyle(fontSize: 25))),
              ),
            ),

            const SizedBox(height: 10), //Spacing between the "boxes"
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: AQIColor(AQIhour),
                child: ListTile(
                  title: Center(
                      child: Text('AQI', style: TextStyle(fontSize: 20))),
                  subtitle: Center(
                      child: Text('$AQIhour', style: TextStyle(fontSize: 50))),
                  textColor: Colors.white70,
                ),
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Maximum',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Minimum', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                      color: AQIColor(AQImax),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AQI',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white70)),
                          Text('$AQImax',
                              style: const TextStyle(
                                  fontSize: 50, color: Colors.white70))
                        ],
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                      color: AQIColor(AQImin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AQI',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white70)),
                          Text('$AQImin',
                              style: const TextStyle(
                                  fontSize: 50, color: Colors.white70))
                        ],
                      )),
                ),
              ],
            ),

            const Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),

            const Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                title: Center(
                    child: Text('Air Quality Index',
                        style: TextStyle(fontSize: 35))),
              ),
            ),

            const Card(
              color: Color.fromARGB(255, 48, 133, 56),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Good',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0-50',
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),

            const Card(
              color: Color.fromARGB(255, 229, 193, 13),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Moderate',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('51-100',
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),

            const Card(
              color: Color.fromARGB(255, 229, 114, 13),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Moderately Bad',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('101-150',
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),

            const Card(
              color: Color.fromARGB(255, 217, 19, 4),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Unhealthy',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('151-250',
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),

            const Card(
              color: Color.fromARGB(255, 121, 0, 0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Dangerous',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('251-500',
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ),
>>>>>>> Stashed changes
          ],
        ),
      ),
    );
  }


}
