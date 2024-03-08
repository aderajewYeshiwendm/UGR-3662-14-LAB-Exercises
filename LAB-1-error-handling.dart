import 'dart:io';

void main() {
  // Path to the file to be read
  String filePath = 'example.txt';

  try {
    // Read the contents of the file
    File file = File(filePath);
    String contents = file.readAsStringSync();

    // Print the contents of the file
    print('File Contents:');
    print(contents);
  } catch (e) {
    // Handle FileSystemException if the file cannot be read
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      // Handle other exceptions
      print('Error: Failed to read the file');
    }
  }
}
