import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';
import 'package:see_v/update_info1.dart';

void main() {
  runApp(UpdateInfo());
}

class UpdateInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class UpdateInfoPage extends StatefulWidget {
  @override
  _UpdateInfoPageState createState() => _UpdateInfoPageState();
}

class _UpdateInfoPageState extends State<UpdateInfoPage> {
  List<TextEditingController> skillControllers = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Info'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: 500,
              color: Colors.black,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/updateimage.png', // Replace with your image asset path
                    fit: BoxFit.cover, // Adjust the width as needed
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'SKILLS:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: List.generate(
                        skillControllers.length,
                        (index) => TextField(
                          controller: skillControllers[index],
                          decoration: InputDecoration(
                            hintText: 'Skill ${index + 1}',
                            labelText: 'Skill ${index + 1}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          skillControllers.add(TextEditingController());
                        });
                      },
                      child: Text('Add Skill'),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateInfo1()),
                        ); // Handle updating information logic here
                      },
                      child: Text('Update Information'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
