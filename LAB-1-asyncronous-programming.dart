import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to fetch weather data from the OpenWeatherMap API
Future<Map<String, dynamic>> fetchWeatherData(
    String apiKey, String city) async {
  // Construct the URL for the API request
  String apiUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  // Send a GET request to the API
  var response = await http.get(Uri.parse(apiUrl));

  // Parse the JSON response
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  // OpenWeatherMap API key (replace 'YOUR_API_KEY' with your actual API key)
  String apiKey = 'YOUR_API_KEY';

  // City for which you want to fetch weather data
  String city = 'London';

  try {
    // Fetch weather data asynchronously
    var weatherData = await fetchWeatherData(apiKey, city);

    // Extract temperature and weather condition from the response
    double temperature = weatherData['main']['temp'];
    String weatherCondition = weatherData['weather'][0]['main'];

    // Display the current temperature and weather condition
    print('Current Temperature: $temperature°C');
    print('Weather Condition: $weatherCondition');
  } catch (e) {
    // Handle any exceptions that occur during the API request
    print('Error: $e');
  }
}
