import 'package:flutter/material.dart';
import 'package:see_v/update_info3.dart';

void main() {
  runApp(UpdateInfo4());
}

class UpdateInfo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class CourseDetailsWidget extends StatelessWidget {
  final TextEditingController courseNameController;
  final TextEditingController certificateController;

  CourseDetailsWidget({
    required this.courseNameController,
    required this.certificateController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Enter Details',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: courseNameController,
          decoration: InputDecoration(labelText: 'Course Name'),
        ),
        TextField(
          controller: certificateController,
          decoration: InputDecoration(labelText: 'Certificate'),
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
  List<CourseDetailsWidget> Course = [
    CourseDetailsWidget(
      courseNameController: TextEditingController(),
      certificateController: TextEditingController(),
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
                      'COURSE:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: Course,
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Course.add(CourseDetailsWidget(
                            courseNameController: TextEditingController(),
                            certificateController: TextEditingController(),
                          ));
                        });
                      },
                      child: Text('Add Course Details'),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateInfo4()),
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
