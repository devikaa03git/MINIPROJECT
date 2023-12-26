import 'package:flutter/material.dart';

void main() {
  runApp(const UpdateInfo4());
}

class UpdateInfo4 extends StatelessWidget {
  const UpdateInfo4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class CourseDetailsWidget extends StatelessWidget {
  final TextEditingController courseNameController;
  final TextEditingController certificateController;

  const CourseDetailsWidget({
    super.key,
    required this.courseNameController,
    required this.certificateController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Enter Details',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: courseNameController,
          decoration: const InputDecoration(labelText: 'Course Name'),
        ),
        TextField(
          controller: certificateController,
          decoration: const InputDecoration(labelText: 'Certificate'),
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
  // ignore: non_constant_identifier_names
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
                      'COURSE:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      children: Course,
                    ),
                    const SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Course.add(CourseDetailsWidget(
                            courseNameController: TextEditingController(),
                            certificateController: TextEditingController(),
                          ));
                        });
                      },
                      child: const Text('Add Course Details'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdateInfo4()),
                        ); // Handle updating information logic here
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
