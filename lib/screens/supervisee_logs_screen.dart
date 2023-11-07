import 'package:flutter/material.dart';
import 'communication_log.dart';

class SuperviseeLogsScreen extends StatefulWidget {
  @override
  _SuperviseeLogsScreenState createState() => _SuperviseeLogsScreenState();
}

class _SuperviseeLogsScreenState extends State<SuperviseeLogsScreen> {
  // Define variables to store communication logs
  List<CommunicationLog> logs = [];

  // Controllers for input fields
  final dateController = TextEditingController();
  final commentsController = TextEditingController();
  final lecturerIdController = TextEditingController();
  final studentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supervisee Logs'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Display list of log dates and details
          for (final log in logs)
            Card(
              child: ListTile(
                title: Text(log.date),
                subtitle: Text(log.details),
              ),
            ),
          SizedBox(height: 20.0),

          // Input fields
          TextField(
            controller: dateController,
            decoration: InputDecoration(labelText: 'Date & Time of Log'),
          ),
          TextField(
            controller: commentsController,
            decoration: InputDecoration(labelText: 'Comments'),
          ),
          TextField(
            controller: lecturerIdController,
            decoration: InputDecoration(labelText: 'Lecturer ID'),
          ),
          TextField(
            controller: studentIdController,
            decoration: InputDecoration(labelText: 'Student ID'),
          ),

          // Save and New buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Save log details (not implemented in this example)
                  final date = dateController.text;
                  final comments = commentsController.text;
                  final lecturerId = lecturerIdController.text;
                  final studentId = studentIdController.text;

                  // Validate input and save to the database (not implemented in this example)

                  // Update the UI
                  setState(() {
                    logs.add(CommunicationLog(
                      date: date,
                      details: 'Comments: $comments\nLecturer ID: $lecturerId\nStudent ID: $studentId',
                    ));
                  });

                  // Clear input fields
                  dateController.clear();
                  commentsController.clear();
                  lecturerIdController.clear();
                  studentIdController.clear();
                },
                child: Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Clear input fields
                  dateController.clear();
                  commentsController.clear();
                  lecturerIdController.clear();
                  studentIdController.clear();
                },
                child: Text('New'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Clear all logs
                  setState(() {
                    logs.clear();
                  });
                },
                child: Text('Display Logs'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement saving to the database and displaying updated details
                  // Not implemented in this example
                },
                child: Text('Communication Logs'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
