import 'package:flutter/material.dart';

class AddBlogPage extends StatelessWidget {
  const AddBlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Blog'),
        backgroundColor: Colors.blue, // Set the app bar color to blue
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title Input Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // Subtitle Input Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Subtitle',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // Blog Content Input Field
            TextFormField(
              maxLines: null, // Allows for multiline input
              decoration: const InputDecoration(
                labelText: 'Type your blog content...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // Upload Button
            ElevatedButton(
              onPressed: () {
                // Add functionality for the upload button
                // You can implement image/file upload logic here
              },
              child: const Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AddBlogPage(),
  ));
}
