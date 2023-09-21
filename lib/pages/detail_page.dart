import 'package:firebase_with_bloc/pages/home_page.dart';
import 'package:firebase_with_bloc/services/database_service.dart';
import 'package:flutter/material.dart';
import '../views/custom_textfield_view.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(controller: titleController, title: "Title"),
            CustomTextField(controller: contentController, title: "Content"),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const SizedBox(width: 10),
                Text(
                  "Do you want to make your post public?",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DBService.storePost(
            titleController.text.trim(),
            contentController.text.trim(),
            true,
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: const Icon(Icons.cloud_upload_rounded),
      ),
    );
  }
}
