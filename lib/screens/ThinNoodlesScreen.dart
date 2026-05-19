//Just an example
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ThinNoodlesScreen extends StatelessWidget {
  const ThinNoodlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: CupertinoColors.white,
        title: Text(
          "Thin Noodles",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //2 min
            Row(
              children: [
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      "2 min",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Rushing mode",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // 5 MIN
            Row(
              children: [
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      "5 min",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Not-so rushing",

                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            //10 min
            Row(
              children: [
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      "10 min",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Soggy. Unyummy",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}