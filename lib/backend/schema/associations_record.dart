import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssociationsRecord extends FirestoreRecord {
  AssociationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "association_name" field.
  String? _associationName;
  String get associationName => _associationName ?? '';
  bool hasAssociationName() => _associationName != null;

  // "association_theme" field.
  String? _associationTheme;
  String get associationTheme => _associationTheme ?? '';
  bool hasAssociationTheme() => _associationTheme != null;

  // "association_number_donation" field.
  int? _associationNumberDonation;
  int get associationNumberDonation => _associationNumberDonation ?? 0;
  bool hasAssociationNumberDonation() => _associationNumberDonation != null;

  // "association_description" field.
  String? _associationDescription;
  String get associationDescription => _associationDescription ?? '';
  bool hasAssociationDescription() => _associationDescription != null;

  // "association_photo_url" field.
  String? _associationPhotoUrl;
  String get associationPhotoUrl => _associationPhotoUrl ?? '';
  bool hasAssociationPhotoUrl() => _associationPhotoUrl != null;

  // "association_order" field.
  int? _associationOrder;
  int get associationOrder => _associationOrder ?? 0;
  bool hasAssociationOrder() => _associationOrder != null;

  // "association_visibility" field.
  bool? _associationVisibility;
  bool get associationVisibility => _associationVisibility ?? false;
  bool hasAssociationVisibility() => _associationVisibility != null;

  void _initializeFields() {
    _associationName = snapshotData['association_name'] as String?;
    _associationTheme = snapshotData['association_theme'] as String?;
    _associationNumberDonation =
        castToType<int>(snapshotData['association_number_donation']);
    _associationDescription =
        snapshotData['association_description'] as String?;
    _associationPhotoUrl = snapshotData['association_photo_url'] as String?;
    _associationOrder = castToType<int>(snapshotData['association_order']);
    _associationVisibility = snapshotData['association_visibility'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('associations');

  static Stream<AssociationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssociationsRecord.fromSnapshot(s));

  static Future<AssociationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssociationsRecord.fromSnapshot(s));

  static AssociationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssociationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssociationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssociationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssociationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssociationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssociationsRecordData({
  String? associationName,
  String? associationTheme,
  int? associationNumberDonation,
  String? associationDescription,
  String? associationPhotoUrl,
  int? associationOrder,
  bool? associationVisibility,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'association_name': associationName,
      'association_theme': associationTheme,
      'association_number_donation': associationNumberDonation,
      'association_description': associationDescription,
      'association_photo_url': associationPhotoUrl,
      'association_order': associationOrder,
      'association_visibility': associationVisibility,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssociationsRecordDocumentEquality
    implements Equality<AssociationsRecord> {
  const AssociationsRecordDocumentEquality();

  @override
  bool equals(AssociationsRecord? e1, AssociationsRecord? e2) {
    return e1?.associationName == e2?.associationName &&
        e1?.associationTheme == e2?.associationTheme &&
        e1?.associationNumberDonation == e2?.associationNumberDonation &&
        e1?.associationDescription == e2?.associationDescription &&
        e1?.associationPhotoUrl == e2?.associationPhotoUrl &&
        e1?.associationOrder == e2?.associationOrder &&
        e1?.associationVisibility == e2?.associationVisibility;
  }

  @override
  int hash(AssociationsRecord? e) => const ListEquality().hash([
        e?.associationName,
        e?.associationTheme,
        e?.associationNumberDonation,
        e?.associationDescription,
        e?.associationPhotoUrl,
        e?.associationOrder,
        e?.associationVisibility
      ]);

  @override
  bool isValidKey(Object? o) => o is AssociationsRecord;
}
