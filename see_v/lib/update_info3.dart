import 'package:flutter/material.dart';
import 'package:see_v/update_info4.dart';
import 'package:see_v/update_info2.dart';

void main() {
  runApp(UpdateInfo3());
}

class UpdateInfo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class ProjectDetailsWidget extends StatelessWidget {
  final TextEditingController projectNameController;
  final TextEditingController descriptionController;

  ProjectDetailsWidget({
    required this.projectNameController,
    required this.descriptionController,
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
          controller: projectNameController,
          decoration: InputDecoration(labelText: 'Project Name'),
        ),
        TextField(
          controller: descriptionController,
          decoration: InputDecoration(labelText: 'Description'),
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
  List<ProjectDetailsWidget> projectDetailsWidgets = [
    ProjectDetailsWidget(
      projectNameController: TextEditingController(),
      descriptionController: TextEditingController(),
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
                      'PROJECTS:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: projectDetailsWidgets,
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          projectDetailsWidgets.add(ProjectDetailsWidget(
                            projectNameController: TextEditingController(),
                            descriptionController: TextEditingController(),
                          ));
                        });
                      },
                      child: Text('Add Project Details'),
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
