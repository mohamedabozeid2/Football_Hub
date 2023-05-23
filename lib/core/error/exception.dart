import '../network/error_message_model.dart';

class TouchlineServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  TouchlineServerException({
    required this.errorMessageModel,
  });
}
