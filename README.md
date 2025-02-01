# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling in asynchronous operations.  The example showcases a network request (`http.get`) that may fail.  The original code lacks robust error handling, leading to potential crashes or unhelpful error messages. The solution provides improved error handling.

## Bug

The `bug.dart` file contains code that attempts to fetch data from a URL. However, if the network request fails (e.g., due to a network issue or invalid URL), the program does not handle the exception gracefully, potentially resulting in a runtime error that doesn't convey clear information about the problem.

## Solution

The `bugSolution.dart` file shows the improved code with enhanced error handling.  It uses a `try-catch` block to catch exceptions during the network request.  The solution also includes more informative error messages, making debugging easier.  Custom exceptions could provide even more structured error data.