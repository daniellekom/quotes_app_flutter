// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
        children: quotes.map((quote)=>QuoteCard(
          quote: quote,
          delete: () {
            setState((){
              quotes.remove(quote);
            });
          }
        )).toList(),
      ) 

    );
  }
}

