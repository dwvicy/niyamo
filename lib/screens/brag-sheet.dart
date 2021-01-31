import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:niyamo/constants/AppTheme.dart';

class BragSheet extends StatefulWidget {
  @override
  _BragSheetState createState() => _BragSheetState();
}

class _BragSheetState extends State<BragSheet> {
  final List<String> _gratefulList = <String>[];
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.offWhite,
      appBar: AppBar(
        backgroundColor: AppTheme.offWhite,
        elevation: 0,
        title: Text(
          'braggart',
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Text(
            'My Brag Sheet',
            style: TextStyle(
                fontSize: 20,
                color: AppTheme.ellowPinky,
                fontWeight: FontWeight.w600),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: _getItems(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.ellowPinky,
          onPressed: () => _displayDialog(context),
          tooltip: 'YES',
          child: Icon(Icons.add)),
    );
  }

  void _addTodoItem(String title) {
    // Wrapping it inside a set state will notify
    // the app that the state has changed
    setState(() {
      _gratefulList.add(title);
    });
    _controller.clear();
  }

  // Generate list of item widgets
  Widget _buildTodoItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber[400], borderRadius: BorderRadius.circular(10)),
        child: ListTile(
            leading: Icon(
              LineIcons.star,
              color: AppTheme.pinky,
            ),
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  // Generate a single item widget
  Future<AlertDialog> _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Tell us the smallest things you\'re proud of'),
            content: TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: 'Enter here'),
            ),
            actions: <Widget>[
              FlatButton(
                child: const Text('ADD'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _addTodoItem(_controller.text);
                },
              ),
              FlatButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _gratefulList) {
      _todoWidgets.add(_buildTodoItem(title));
    }
    return _todoWidgets;
  }
}
