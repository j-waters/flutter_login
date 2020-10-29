import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiver/core.dart';

class ResponseData {
  String errorMsg;
  String successMsg;
  FlatButton actionButton;

  ResponseData({
    this.errorMsg,
    this.successMsg,
    this.actionButton,
  });

  @override
  String toString() {
    return '$runtimeType($errorMsg, $successMsg)';
  }

  bool operator ==(Object other) {
    if (other is ResponseData) {
      return errorMsg == other.errorMsg &&
          successMsg == other.successMsg &&
          actionButton == other.actionButton;
    }
    return false;
  }

  int get hashCode => hash3(errorMsg, successMsg, actionButton);
}
