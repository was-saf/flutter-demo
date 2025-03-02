import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: NotesList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class NotesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with your dynamic item count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Note $index'),
          subtitle: Text('This is the detail of note $index'),
          onTap: () {
            // Add your onTap code here!
          },
        );
      },
    );
  }
}
