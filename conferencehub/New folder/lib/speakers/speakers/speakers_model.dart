import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'speakers_widget.dart' show SpeakersWidget;
import 'package:flutter/material.dart';

class SpeakersModel extends FlutterFlowModel<SpeakersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
