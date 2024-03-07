import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'cguu_model.dart';
export 'cguu_model.dart';

class CguuWidget extends StatefulWidget {
  const CguuWidget({super.key});

  @override
  State<CguuWidget> createState() => _CguuWidgetState();
}

class _CguuWidgetState extends State<CguuWidget> {
  late CguuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CguuModel());

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
            alignment: const AlignmentDirectional(0.0, 0.0),
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
                              'Conditions Générales d\'Utilisation',
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
                                'JAM L\'Appli Solidaire (le « Service ») est une application de collecte de fonds développée par la société JAM Solidaire, Société par actions simplifiée à associé unique (SASU), qui est le responsable du traitement des données personnelles concernées par le Service. JAM Solidaire met en relation des ONG et des donateurs.\n\n1. Acceptation des Conditions Générales d\'Utilisation\nL\'accès au service et son utilisation constituent une acceptation de votre part ou de l\'entité que vous représentez (l\'« Utilisateur ») des conditions générales suivantes (les « conditions d\'utilisation »). Si vous n\'acceptez pas ces dispositions, vous ne pourrez pas accéder au Service ni l\'utiliser.\n\nL\'application JAM L\'Appli Solidaire peut être téléchargée depuis l\'Apple App Store pour iOS et depuis Google Play pour Android. Il convient de noter que l\'Apple App Store et Google Play ne sont pas des services du JAM Solidaire et sont soumis à des conditions distinctes des fournisseurs de services tiers respectifs.\n\n2. Droits et Propriété Intellectuelle\nLe Service est protégé par les lois sur la propriété intellectuelle existant dans le monde. Rien dans ces conditions d\'utilisation n\'est considéré comme conférant des droits ou des avantages de tiers sur ce contenu.\n\nLe nom, le logo et l\'abréviation de JAM Solidaire (« JAM L\'Appli Solidaire ») sont la propriété exclusive de JAM Solidaire et sont protégés par l\'INPI. L\'utilisation non autorisée des marques de JAM Solidaire est interdite. Les Marques de JAM Solidaire peuvent être reproduites ou utilisées de quelque manière que ce soit sans l\'autorisation écrite préalable de JAM Solidaire.\n\n3. Service de Dons\nLe Service permet aux utilisateurs de faire des dons pour soutenir les projets des ONG et associations clientes de JAM Solidaire. Les dons sont traités par le processeur de paiement tiers, Stripe, en dehors de l\'application. Nous prenons toutes les précautions nécessaires pour assurer que tous les dons et transactions connexes soient sécurisés.\n\n4. Traitement des Données Personnelles\nNous collectons et traitons vos données personnelles pour fournir le Service, traiter vos dons, et améliorer notre Service. La base légale pour ce traitement est votre consentement, conformément à l\'article 6(1)(a) du RGPD.\n\nEn tant qu\'utilisateur, vous avez le droit d\'accéder à vos données, de les redresser, de demander leur suppression, de limiter leur traitement, de vous opposer à leur traitement, et d\'exercer votre droit à la portabilité des données.\n\nVos données personnelles sont conservées pour la durée nécessaire à la réalisation des finalités pour lesquelles elles ont été imposées.\n\nNous avons mis en place des mesures de sécurité adaptées pour protéger vos données personnelles contre toute destruction, perte, altération, divulgation ou accès non autorisés.\n\nPour toute question concernant le traitement de vos données personnelles, veuillez nous contacter via l\'adresse contact@jam-solidaire.com . Vous avez également le droit de déposer une plainte auprès de l\'autorité de contrôle compétente si vous estimez que le traitement de vos données personnelles n\'est pas conforme à la réglementation en vigueur.\n\n5. Lien et niveaux de services\nLe Service intègre des services tiers tels que le partage sur les réseaux et contient des liens vers des pages Web tierces. Les services et les pages Web de tiers ne sont pas sous notre contrôle et sont soumis aux conditions générales de ces tiers.\n\n6. Garanties et Responsabilités\nLe Service est fourni « tel quel » et « selon sa disponibilité », sans garantie d\'aucune sorte, expresse ou implicite, y compris, sans limitation, les garanties de qualité marchande, d\'adéquation à un objectif particulier ou d\'absence de violation. Nous ne donnons aucune garantie ni ne faisons de déclaration quant à l\'exactitude ou à l\'exhaustivité. Nous modifions, améliorons ou procédons à jour régulièrement le service.\n\nEn aucun cas, JAM Solidaire, son personnel, ses fonctionnaires, ses employés, ses fournisseurs d\'informations ou de contenu ne seront responsables des pertes, dommages, responsabilités ou dépenses encourus ou subis qui résulteraient de l\'utilisation du Service.\n\n7. Modification des Conditions d\'Utilisation\nNous nous réservons le droit exclusif, à notre seule discrétion, de (i) modifier, limiter ou interrompre le Service à quelque titre que ce soit ; (ii) refuser l\'accès de l\'utilisateur au service sans préavis (iii) modifier les conditions générales d\'utilisation.\n\n8. Droit Applicable\nCes conditions d\'utilisation et tout litige en découlant doivent être exclusivement régis par les principes du droit français.',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('politiqueConf');
                                },
                                text: 'Voir la politique de confidentialité',
                                options: FFButtonOptions(
                                  height: 45.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
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
