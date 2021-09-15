import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  var count = 0;
  var qIndex = 0;

  Answer(this.selectHandler, this.qIndex, this.count);
  @override
  Widget build(BuildContext context) {
    var answers = [
      ['Bugatti', 'Lamborghini', 'Pagani', 'Ferrari'],
      ['Green', 'Black', 'Red', 'Yellow'],
      ['Amsterdam', 'Budapest', 'Copenhagen', 'London'],
    ];
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.cyan,
        child: Text(answers[qIndex][count]),
        onPressed: selectHandler,
      ),
    );
  }
}
