import 'package:flutter/material.dart';
import 'package:todo_hive/theme/app_color.dart';

class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  VoidCallback onSave;
  VoidCallback onCancel;

  final controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.primary,
      title: const Center(
        child: Text(
          'Add Task',
          style: TextStyle(color: AppColor.white),
        ),
      ),
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              style: const TextStyle(color: AppColor.white),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white),
                ),
                hintText: 'Enter Your Task',
                hintStyle: TextStyle(color: AppColor.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onSave,
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: onCancel,
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
