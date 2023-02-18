import 'package:flutter/material.dart';

class StatiquePage extends StatelessWidget {
  const StatiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Statistique"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text("statistique de mon stock"),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed("homme");
                        },
                        label: const Text(
                          "Retour",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]
                    //   Card(
                    //       elevation: 8,
                    //       child: Container(
                    //         height: 250,
                    //         width: 250,
                    //         decoration: const BoxDecoration(
                    //           color: Colors.red,
                    //         ),
                    //       )),
                    // ],
                    ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
