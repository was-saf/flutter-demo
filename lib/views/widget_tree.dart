import 'package:flutter/material.dart';
import 'package:student/data/notifiers.dart';
import 'package:student/views/pages/home_page.dart';
import 'package:student/views/pages/notes_page.dart';
import 'package:student/views/pages/profile_page.dart';
import 'package:student/views/pages/progress_page.dart';
import 'package:student/views/pages/settings_page.dart';
import 'package:student/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProgressPage(), NotesPage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Row(
            children: [
              Image.asset('assets/images/logo.png', height: 50.0),
              SizedBox(width: 4),
              Text(
                'Student Handbook',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: isDarkModeNotifier.value ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
