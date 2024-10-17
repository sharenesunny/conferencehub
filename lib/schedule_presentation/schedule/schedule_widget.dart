import '/backend/backend.dart';
import '/comp/empty_state_schedule/empty_state_schedule_widget.dart';
import '/comp/loading_offwhite/loading_offwhite_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'schedule_model.dart';
export 'schedule_model.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget>
    with TickerProviderStateMixin {
  late ScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.85,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.menuModel,
              updateCallback: () => safeSetState(() {}),
              child: const MenuWidget(),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Artboard_8_copy@2x.png',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 7.0,
                                    sigmaY: 2.0,
                                  ),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xA7E9E9E9),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: const Color(0xB3E9E9E9),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.dashboard_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Schedule',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displayMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(-1.0, 0),
                          child: TabBar(
                            isScrollable: true,
                            labelColor: FlutterFlowTheme.of(context).primary,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).accent2,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            indicatorWeight: 2.0,
                            tabs: const [
                              Tab(
                                text: 'Thursday',
                              ),
                              Tab(
                                text: 'Friday',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(
                                  queryBuilder: (scheduleRecord) =>
                                      scheduleRecord
                                          .where(
                                            'day',
                                            isEqualTo: 'Thursday',
                                          )
                                          .orderBy('time'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const Center(
                                      child: LoadingOffwhiteWidget(),
                                    );
                                  }
                                  List<ScheduleRecord>
                                      columnScheduleRecordList = snapshot.data!;
                                  if (columnScheduleRecordList.isEmpty) {
                                    return const Center(
                                      child: EmptyStateScheduleWidget(),
                                    );
                                  }

                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                              columnScheduleRecordList.length,
                                              (columnIndex) {
                                        final columnScheduleRecord =
                                            columnScheduleRecordList[
                                                columnIndex];
                                        return StreamBuilder<ScheduleRecord>(
                                          stream: ScheduleRecord.getDocument(
                                              columnScheduleRecord.reference),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  child: SpinKitThreeBounce(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 10.0,
                                                  ),
                                                ),
                                              );
                                            }

                                            final containerScheduleRecord =
                                                snapshot.data!;

                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (containerScheduleRecord
                                                        .isProgram ==
                                                    false) {
                                                  if (containerScheduleRecord
                                                          .active ==
                                                      true) {
                                                    context.pushNamed(
                                                      'presentationActive',
                                                      queryParameters: {
                                                        'activeChat':
                                                            serializeParam(
                                                          containerScheduleRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                      'presentationInfo',
                                                      queryParameters: {
                                                        'activeInfo':
                                                            serializeParam(
                                                          containerScheduleRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  return;
                                                }
                                              },
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                constraints: const BoxConstraints(
                                                  minHeight: 50.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (containerScheduleRecord
                                                        .active) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .alternate;
                                                    } else if (containerScheduleRecord
                                                        .isComplete) {
                                                      return Colors.transparent;
                                                    } else {
                                                      return Colors.transparent;
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color:
                                                        valueOrDefault<Color>(
                                                      containerScheduleRecord.isComplete
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.6,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (containerScheduleRecord
                                                                        .isProgram ==
                                                                    false)
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      containerScheduleRecord
                                                                          .type,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                () {
                                                                              if (containerScheduleRecord.active) {
                                                                                return FlutterFlowTheme.of(context).accent3;
                                                                              } else if (containerScheduleRecord.isComplete) {
                                                                                return FlutterFlowTheme.of(context).accent2;
                                                                              } else {
                                                                                return FlutterFlowTheme.of(context).alternate;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                Text(
                                                                  containerScheduleRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color:
                                                                            () {
                                                                          if (containerScheduleRecord
                                                                              .isComplete) {
                                                                            return FlutterFlowTheme.of(context).accent2;
                                                                          } else if (containerScheduleRecord
                                                                              .active) {
                                                                            return FlutterFlowTheme.of(context).secondaryBackground;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primaryText;
                                                                          }
                                                                        }(),
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        lineHeight:
                                                                            1.2,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                dateTimeFormat(
                                                                  "jm",
                                                                  containerScheduleRecord
                                                                      .time!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color:
                                                                          () {
                                                                        if (containerScheduleRecord
                                                                            .isComplete) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .accent2;
                                                                        } else if (containerScheduleRecord
                                                                            .active) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .secondaryBackground;
                                                                        } else {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .primaryText;
                                                                        }
                                                                      }(),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      })
                                          .divide(const SizedBox(height: 10.0))
                                          .addToStart(const SizedBox(height: 20.0))
                                          .addToEnd(const SizedBox(height: 20.0)),
                                    ),
                                  );
                                },
                              ),
                              StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(
                                  queryBuilder: (scheduleRecord) =>
                                      scheduleRecord
                                          .where(
                                            'day',
                                            isEqualTo: 'Friday',
                                          )
                                          .orderBy('time'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const LoadingOffwhiteWidget();
                                  }
                                  List<ScheduleRecord>
                                      columnScheduleRecordList = snapshot.data!;
                                  if (columnScheduleRecordList.isEmpty) {
                                    return const Center(
                                      child: EmptyStateScheduleWidget(),
                                    );
                                  }

                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                              columnScheduleRecordList.length,
                                              (columnIndex) {
                                        final columnScheduleRecord =
                                            columnScheduleRecordList[
                                                columnIndex];
                                        return StreamBuilder<ScheduleRecord>(
                                          stream: ScheduleRecord.getDocument(
                                              columnScheduleRecord.reference),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  child: SpinKitThreeBounce(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 10.0,
                                                  ),
                                                ),
                                              );
                                            }

                                            final containerScheduleRecord =
                                                snapshot.data!;

                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (containerScheduleRecord
                                                        .isProgram ==
                                                    false) {
                                                  if (containerScheduleRecord
                                                          .active ==
                                                      true) {
                                                    context.pushNamed(
                                                      'presentationActive',
                                                      queryParameters: {
                                                        'activeChat':
                                                            serializeParam(
                                                          containerScheduleRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                      'presentationInfo',
                                                      queryParameters: {
                                                        'activeInfo':
                                                            serializeParam(
                                                          containerScheduleRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  return;
                                                }
                                              },
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                constraints: const BoxConstraints(
                                                  minHeight: 50.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (containerScheduleRecord
                                                        .active) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .alternate;
                                                    } else if (containerScheduleRecord
                                                        .isComplete) {
                                                      return Colors.transparent;
                                                    } else {
                                                      return Colors.transparent;
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color:
                                                        valueOrDefault<Color>(
                                                      containerScheduleRecord.isComplete
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.6,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (containerScheduleRecord
                                                                        .isProgram ==
                                                                    false)
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      containerScheduleRecord
                                                                          .type,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                () {
                                                                              if (containerScheduleRecord.active) {
                                                                                return FlutterFlowTheme.of(context).accent3;
                                                                              } else if (containerScheduleRecord.isComplete) {
                                                                                return FlutterFlowTheme.of(context).accent2;
                                                                              } else {
                                                                                return FlutterFlowTheme.of(context).alternate;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                Text(
                                                                  containerScheduleRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color:
                                                                            () {
                                                                          if (containerScheduleRecord
                                                                              .isComplete) {
                                                                            return FlutterFlowTheme.of(context).accent2;
                                                                          } else if (containerScheduleRecord
                                                                              .active) {
                                                                            return FlutterFlowTheme.of(context).secondaryBackground;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primaryText;
                                                                          }
                                                                        }(),
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        lineHeight:
                                                                            1.2,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                dateTimeFormat(
                                                                  "jm",
                                                                  containerScheduleRecord
                                                                      .time!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color:
                                                                          () {
                                                                        if (containerScheduleRecord
                                                                            .isComplete) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .accent2;
                                                                        } else if (containerScheduleRecord
                                                                            .active) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .secondaryBackground;
                                                                        } else {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .primaryText;
                                                                        }
                                                                      }(),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      })
                                          .divide(const SizedBox(height: 10.0))
                                          .addToStart(const SizedBox(height: 20.0))
                                          .addToEnd(const SizedBox(height: 20.0)),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
                  .divide(const SizedBox(height: 8.0))
                  .addToStart(const SizedBox(height: 25.0))
                  .addToEnd(const SizedBox(height: 50.0)),
            ),
          ),
        ),
      ),
    );
  }
}
