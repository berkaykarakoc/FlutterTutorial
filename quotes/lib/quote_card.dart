import 'package:flutter/material.dart';
import "quote.dart";

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "- ${quote.author}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: delete,
                icon: Icon(Icons.delete),
                color: Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
