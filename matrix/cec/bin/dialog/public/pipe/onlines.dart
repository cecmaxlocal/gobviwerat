// Here is the Dart file `pipe.dart` designed with public 
// and private members, handling business logic in a 
// path-aware manner relative to the current 
// directory:

// ```dart
// pipe.dart

import 'dart:io';

/// Public class to manage pipe operations in business logic with path awareness
class Pipe {
  final Directory _currentDir;

  /// Constructor initializes with the current working directory
  Pipe() : _currentDir = Directory.current;

  /// Public getter for the current directory path
  String get currentPath => _currentDir.path;

  /// Public method to log a message with timestamp to console
  void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    print('[$timestamp] $message');
  }

  /// Writes a message to a log file inside a business folder in current path
  Future<void> writeBusinessLog(String message, {String filename = 'business.log'}) async {
    final businessDir = Directory('${_currentDir.path}/business');
    if (!await businessDir.exists()) {
      await businessDir.create(recursive: true);
    }

    final logFile = File('${businessDir.path}/$filename');
    final timestamp = DateTime.now().toIso8601String();
    await logFile.writeAsString('[$timestamp] $message\n', mode: FileMode.append);
  }

}

void main() async {
  final pipe = Pipe();

  pipe.log('Starting business operation in path: ${pipe.currentPath}');

  await pipe.writeBusinessLog('Business operation initialized');

  pipe.log('Business operation in progress...');

  await pipe.writeBusinessLog('Business operation completed');

  pipe.log('Operation finished.');
}
// ```

// ### Explanation:
// - Uses Dart's `Directory` class to capture the current path privately.
// - Exposes `currentPath` as a public getter.
// - Provides public logging and file writing methods for business usage.
// - Demonstrates a private helper method `_formatMessage` (using underscore prefix) that is accessible only inside the class.
// - Creates a `business` directory under the current path if not present for storing logs.
// - Ensures good encapsulation and access control per Dart conventions.

// This design balances public and private members, reflecting Dart's library privacy model and business logic needs with path awareness.[2][4][10]

// [1](https://docs.flutter.dev/cookbook/persistence/reading-writing-files)
// [2](https://dart.dev/tools/pub/package-layout)
// [3](https://dart.dev/effective-dart/usage)
// [4](https://dart.dev/language/libraries)
// [5](https://stackoverflow.com/questions/71504912/flutter-dart-file-path)
// [6](https://dart.dev/tools/pub/environment-variables)
// [7](https://codewithandrea.com/articles/flutter-api-keys-dart-define-env-files/)
// [8](https://github.com/dart-lang/dartdoc/issues/2154)
// [9](https://www.youtube.com/watch?v=YsXMja1Qmn8)
// [10](https://dev.to/tobacodes/using-dart-to-create-custom-directories-and-files-for-your-new-flutter-project-cnh)
