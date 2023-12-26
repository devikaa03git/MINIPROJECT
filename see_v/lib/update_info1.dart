import 'package:flutter/material.dart';
import 'package:see_v/update_info2.dart';

void main() {
  runApp(const UpdateInfo1());
}

class UpdateInfo1 extends StatelessWidget {
  const UpdateInfo1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class EducationDetailsWidget extends StatelessWidget {
  final TextEditingController institutionController;
  final TextEditingController fromDateController;
  final TextEditingController toDateController;
  final TextEditingController courseController;

  const EducationDetailsWidget({
    super.key,
    required this.institutionController,
    required this.fromDateController,
    required this.toDateController,
    required this.courseController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Enter Details',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        TextField(
          controller: institutionController,
          decoration: const InputDecoration(labelText: 'Institution'),
        ),
        TextField(
          controller: fromDateController,
          decoration: const InputDecoration(labelText: 'From Date'),
        ),
        TextField(
          controller: toDateController,
          decoration: const InputDecoration(labelText: 'To Date'),
        ),
        TextField(
          controller: courseController,
          decoration: const InputDecoration(labelText: 'Course'),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class UpdateInfoPage extends StatefulWidget {
  const UpdateInfoPage({super.key});

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
        title: const Text('Update Info'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: 500,
              color: Colors.black,
              padding: const EdgeInsets.all(16.0),
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
                    const Text(
                      'EDUCATION DETAILS:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      children: educationWidgets,
                    ),
                    const SizedBox(height: 10.0),
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
                      child: const Text('Add Education Details'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle updating information logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdateInfo2()),
                        );
                      },
                      child: const Text('Update Information'),
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
