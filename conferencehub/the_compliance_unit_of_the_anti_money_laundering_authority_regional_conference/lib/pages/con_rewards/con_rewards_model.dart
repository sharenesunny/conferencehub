import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'con_rewards_widget.dart' show ConRewardsWidget;
import 'package:flutter/material.dart';

class ConRewardsModel extends FlutterFlowModel<ConRewardsWidget> {
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
