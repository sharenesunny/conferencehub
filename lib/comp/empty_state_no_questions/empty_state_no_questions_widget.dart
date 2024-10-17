import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'empty_state_no_questions_model.dart';
export 'empty_state_no_questions_model.dart';

class EmptyStateNoQuestionsWidget extends StatefulWidget {
  const EmptyStateNoQuestionsWidget({super.key});

  @override
  State<EmptyStateNoQuestionsWidget> createState() =>
      _EmptyStateNoQuestionsWidgetState();
}

class _EmptyStateNoQuestionsWidgetState
    extends State<EmptyStateNoQuestionsWidget> {
  late EmptyStateNoQuestionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyStateNoQuestionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const AlignmentDirectional(0.0, 1.0),
      children: [
        const FlutterFlowVideoPlayer(
          path: 'assets/videos/Comp_2_2.mp4',
          videoType: VideoType.asset,
          autoPlay: true,
          looping: true,
          showControls: false,
          allowFullScreen: false,
          allowPlaybackSpeedMenu: false,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
          child: Text(
            'Ask a question',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
