import 'package:flutter/material.dart';
import 'package:see_v/update_info1.dart';

void main() {
  runApp(const UpdateInfo());
}

class UpdateInfo extends StatelessWidget {
  const UpdateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UpdateInfoPage(),
    );
  }
}

class UpdateInfoPage extends StatefulWidget {
  const UpdateInfoPage({super.key});

  @override
  _UpdateInfoPageState createState() => _UpdateInfoPageState();
}

class _UpdateInfoPageState extends State<UpdateInfoPage> {
  List<TextEditingController> skillControllers = [TextEditingController()];

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
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'SKILLS:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
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
                    const SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          skillControllers.add(TextEditingController());
                        });
                      },
                      child: const Text('Add Skill'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdateInfo1()),
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
