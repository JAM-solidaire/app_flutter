import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'politique_conf_model.dart';
export 'politique_conf_model.dart';

class PolitiqueConfWidget extends StatefulWidget {
  const PolitiqueConfWidget({super.key});

  @override
  State<PolitiqueConfWidget> createState() => _PolitiqueConfWidgetState();
}

class _PolitiqueConfWidgetState extends State<PolitiqueConfWidget> {
  late PolitiqueConfModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PolitiqueConfModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.keyboard_arrow_left_sharp,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 650.0,
              ),
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                              'Politique de Confidentialité',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Cette politique de confidentialité décrit comment JAM L\'Appli Solidaire (« nous » ou « notre »), une société par actions simplifiée à associé unique (SASU), collecte, utilise, partage et protège les informations personnelles que vous nous fournissez lorsque vous utilisez notre service (l\'« Application »). Cette politique de confidentialité s\'applique à tous les services offerts par JAM L\'Appli Solidaire.\n\n1. Collecte des informations\nNous collectons des informations lorsque vous utilisez notre Application. Ces informations peuvent inclure :\n- Des informations que vous fournissez directement, telles que votre nom, votre adresse e-mail et toutes autres informations demandées lors de votre inscription.\n- Des informations techniques, telles que des détails sur votre appareil, votre adresse IP, et vos interactions avec notre Application.\n\n2. Utilisation des informations\nNous utilisons les informations que nous collectons pour fournir, maintenir, améliorer et développer notre Application, et pour communiquer avec vous.\n\n3. Partage des informations\nNous ne partageons vos informations personnelles qu\'avec votre consentement ou dans les circonstances suivantes :\n- Avec des tiers qui nous aident à fournir, maintenir, améliorer et développer notre application.\n- Si nous sommes légalement tenus de le faire ou pour protéger nos droits, notre propriété ou notre sécurité, ou ceux de nos utilisateurs ou du public.\n\n4. Sécurité\nNous prenons la sécurité de vos informations très au sérieux et utilisons des mesures appropriées pour protéger vos informations contre l\'accès, la modification ou la destruction non autorisées.\n\n5. Vos droits\nVous avez le droit d\'accéder à vos informations, de les mettre à jour, de les supprimer, de les transférer à d\'autres services et de limiter ou d\'opposer leur traitement.\n\n6. Modifications de la Politique de Confidentialité\nNous pouvons modifier cette politique de confidentialité de temps à autre. Nous vous informons de toute modification importante.\n\n7. Contacter\nSi vous avez des questions sur cette politique de confidentialité, veuillez nous contacter à contact@jam-solidaire.com .\n\n8. Consentement\nEn utilisant notre Application, vous consentez à notre politique de confidentialité.',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
