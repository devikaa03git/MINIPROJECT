import 'package:flutter/material.dart';
import 'package:see_v/update_info1.dart';
import 'package:see_v/update_info3.dart';

void main() {
  runApp(UpdateInfo2());
}

class UpdateInfo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class ExperienceDetailsWidget extends StatelessWidget {
  final TextEditingController institutionController;
  final TextEditingController fromDateController;
  final TextEditingController toDateController;
  final TextEditingController courseController;

  ExperienceDetailsWidget({
    required this.institutionController,
    required this.fromDateController,
    required this.toDateController,
    required this.courseController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Enter Details',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        TextField(
          controller: institutionController,
          decoration: InputDecoration(labelText: 'Name of Institution'),
        ),
        TextField(
          controller: fromDateController,
          decoration: InputDecoration(labelText: '(From) Date'),
        ),
        TextField(
          controller: toDateController,
          decoration: InputDecoration(labelText: '(To) Date'),
        ),
        TextField(
          controller: courseController,
          decoration: InputDecoration(labelText: 'Job position'),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}

class UpdateInfoPage extends StatefulWidget {
  @override
  _UpdateInfoPageState createState() => _UpdateInfoPageState();
}

class _UpdateInfoPageState extends State<UpdateInfoPage> {
  List<ExperienceDetailsWidget> experienceWidgets = [
    ExperienceDetailsWidget(
      institutionController: TextEditingController(),
      fromDateController: TextEditingController(),
      toDateController: TextEditingController(),
      courseController: TextEditingController(),
    )
  ];
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'EXPERIENCE:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: experienceWidgets,
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          experienceWidgets.add(ExperienceDetailsWidget(
                            institutionController: TextEditingController(),
                            fromDateController: TextEditingController(),
                            toDateController: TextEditingController(),
                            courseController: TextEditingController(),
                          ));
                        });
                      },
                      child: Text('Add Experience Details'),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle updating information logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateInfo3()),
                        );
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
