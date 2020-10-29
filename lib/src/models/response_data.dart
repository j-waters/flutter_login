import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class ResponseData {
  String errorMsg;
  String successMsg;

  ResponseData({
    this.errorMsg,
    this.successMsg,
  });

  @override
  String toString() {
    return '$runtimeType($errorMsg, $successMsg)';
  }

  bool operator ==(Object other) {
    if (other is ResponseData) {
      return errorMsg == other.errorMsg && successMsg == other.successMsg;
    }
    return false;
  }

  int get hashCode => hash2(errorMsg, successMsg);
}
