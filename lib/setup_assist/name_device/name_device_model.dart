import '/flutter_flow/flutter_flow_util.dart';
import 'name_device_widget.dart' show NameDeviceWidget;
import 'package:flutter/material.dart';

class NameDeviceModel extends FlutterFlowModel<NameDeviceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
