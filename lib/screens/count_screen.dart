import 'package:assesment/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';

// # Description

// - Load ListWidget and run the app.
// - Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
//   count will get reset

// # Functional/Product Requirement

// - There should be 100 list items, each should be set at 0 initially and user can increment its
//   count.
// - The count incremented by user should be persisted when he scrolls the list.

// # Task:

// - Solve the functional requirement.
// - Review this file from Code Review perspective, list the issues and what changes should be made,
//   perform the changes to the file.
// - Think of it as a intern checked in this code and as a senior has to code review and fix the code
//   from implementation perspective to make it correct and efficient.
// - Send the fixed file back to the recruiter.

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  /// Here we're creating a list of length 100 to pass that list in the [ListView.builder]
  var widgetList = List.generate(
    100,
    (index) => const ListItemWidget(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );
  }
}
