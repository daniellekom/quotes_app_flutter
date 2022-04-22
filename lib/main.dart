// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home:QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

List<Quote> quotes = [
Quote(author: 'Oscar wild', text: 'Be yourself everyone else is taken'),
Quote(author: 'Oscar wild', text: 'I have nothing to declare but my genius'),
Quote(author: 'Oscar wild', text: 'The truth is rarely true and never simple'),
  ];

Widget quoteTemplate(quote){
  return Card(
    margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
    child:Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Text(
          quote.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 6.0),
        Text(
          quote.author,
          style:TextStyle(
            fontSize: 14.0,
            color:Colors.grey[400],
          )
        )
      ],),
    )
  );
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=> quoteTemplate(quote)).toList(),
      ) 

    );
  }
}