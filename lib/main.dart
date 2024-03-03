import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote("dfhskjafhasdf", "Mariana"),
    Quote("dkjfasldf","Avila"),
    Quote("lili", "hi"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [],
        title:Text("Aweasome Quotes"),
        centerTitle: true,
        backgroundColor:  Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(
            quote:quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            });
        }).toList(),
        ),
    );
  }
}
//new class created
