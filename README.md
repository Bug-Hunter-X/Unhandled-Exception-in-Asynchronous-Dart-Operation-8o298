# Unhandled Exception in Asynchronous Dart Operation

This repository demonstrates a common error in Dart: unhandled exceptions within asynchronous operations. The `fetchData` function makes a network request; however, error handling is incomplete. This can lead to crashes or unexpected behavior if the request fails.

The solution demonstrates robust error handling, including catching exceptions, providing informative error messages, and allowing higher-level functions to manage failures appropriately.  The example uses the `http` package for network requests.  Make sure to add it to your `pubspec.yaml` before running.

```yaml
dependencies:
  http: ^0.13.5
```