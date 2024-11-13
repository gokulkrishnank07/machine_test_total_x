import 'package:flutter/material.dart';

class SortingBottomSheet extends StatefulWidget {
  @override
  _SortingBottomSheetState createState() => _SortingBottomSheetState();
}

class _SortingBottomSheetState extends State<SortingBottomSheet> {
  String selectedSort = "All";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sort",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          RadioListTile<String>(
            title: Text("All"),
            value: "All",
            groupValue: selectedSort,
            onChanged: (value) {
              setState(() {
                selectedSort = value!;
              });
              Navigator.pop(context);
            },
          ),
          RadioListTile<String>(
            title: Text("Age: Elder"),
            value: "Elder",
            groupValue: selectedSort,
            onChanged: (value) {
              setState(() {
                selectedSort = value!;
              });
              Navigator.pop(context); 
            },
          ),
          RadioListTile<String>(
            title: Text("Age: Younger"),
            value: "Younger",
            groupValue: selectedSort,
            onChanged: (value) {
              setState(() {
                selectedSort = value!;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
