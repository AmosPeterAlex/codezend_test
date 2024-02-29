import 'package:codezend_machine_test/view/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Enter Correct Location',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(height: 16),
            MaterialButton(
              height: 50,
              shape: StadiumBorder(),
              color: Colors.grey[300],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenTwo(
                      location: locationController.text,
                    ),
                  ),
                );
              },
              child: Text('Search',style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
