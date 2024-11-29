import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'container_component_model.dart';
export 'container_component_model.dart';

class ContainerComponentWidget extends StatefulWidget {
  const ContainerComponentWidget({super.key});

  @override
  State<ContainerComponentWidget> createState() =>
      _ContainerComponentWidgetState();
}

class _ContainerComponentWidgetState extends State<ContainerComponentWidget> {
  late ContainerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContainerComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 22.0,
              color: Color(0x1A000000),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 16.0, 16.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('HomePageCAN_FIGMA');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
