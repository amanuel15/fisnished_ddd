import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ProductFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          // Text(
          //   failure.maybeMap(
          //     insufficientPermissions: (_) => 'Insufficient permissions',
          //     orElse: () => 'Unexpected error.\nPlease, contact support.',
          //   ),
          //   style: const TextStyle(fontSize: 24),
          //   textAlign: TextAlign.center,
          // ),
          FlatButton(
            onPressed: () {
              print('Sending email...');
            },
            textColor: Theme.of(context).accentColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CriticalCatagoryFailureDisplay extends StatelessWidget {
  final CatagoryFailure failure;

  const CriticalCatagoryFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          // Text(
          //   failure.maybeMap(
          //     insufficientPermissions: (_) => 'Insufficient permissions',
          //     orElse: () => 'Unexpected error.\nPlease, contact support.',
          //   ),
          //   style: const TextStyle(fontSize: 24),
          //   textAlign: TextAlign.center,
          // ),
          FlatButton(
            onPressed: () {
              print('Sending email...');
            },
            textColor: Theme.of(context).accentColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
