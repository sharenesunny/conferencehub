import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'activity_feed_model.dart';
export 'activity_feed_model.dart';

class ActivityFeedWidget extends StatefulWidget {
  const ActivityFeedWidget({super.key});

  @override
  State<ActivityFeedWidget> createState() => _ActivityFeedWidgetState();
}

class _ActivityFeedWidgetState extends State<ActivityFeedWidget> {
  late ActivityFeedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityFeedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
