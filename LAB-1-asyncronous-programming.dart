import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 3));

  List<String> quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt",
    "Life is what happens when you're busy making other plans. - John Lennon",
  ];

  int randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

void main() async {
  String quote = await fetchRandomQuote();

  print("Random Quote: $quote");
}
