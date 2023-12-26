import 'package:flutter/material.dart';
import 'package:see_v/update_info2.dart';

void main() {
  runApp(UpdateInfo1());
}

class UpdateInfo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class EducationDetailsWidget extends StatelessWidget {
  final TextEditingController institutionController;
  final TextEditingController fromDateController;
  final TextEditingController toDateController;
  final TextEditingController courseController;

  EducationDetailsWidget({
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
          decoration: InputDecoration(labelText: 'Institution'),
        ),
        TextField(
          controller: fromDateController,
          decoration: InputDecoration(labelText: 'From Date'),
        ),
        TextField(
          controller: toDateController,
          decoration: InputDecoration(labelText: 'To Date'),
        ),
        TextField(
          controller: courseController,
          decoration: InputDecoration(labelText: 'Course'),
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
  List<EducationDetailsWidget> educationWidgets = [
    EducationDetailsWidget(
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
                      'EDUCATION DETAILS:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: educationWidgets,
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          educationWidgets.add(EducationDetailsWidget(
                            institutionController: TextEditingController(),
                            fromDateController: TextEditingController(),
                            toDateController: TextEditingController(),
                            courseController: TextEditingController(),
                          ));
                        });
                      },
                      child: Text('Add Education Details'),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle updating information logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateInfo2()),
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
