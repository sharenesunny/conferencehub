import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'empty_state_no_chat_model.dart';
export 'empty_state_no_chat_model.dart';

class EmptyStateNoChatWidget extends StatefulWidget {
  const EmptyStateNoChatWidget({super.key});

  @override
  State<EmptyStateNoChatWidget> createState() => _EmptyStateNoChatWidgetState();
}

class _EmptyStateNoChatWidgetState extends State<EmptyStateNoChatWidget> {
  late EmptyStateNoChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyStateNoChatModel());

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
          path: 'assets/videos/Comp_2.mp4',
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
            'Start chatting!',
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
