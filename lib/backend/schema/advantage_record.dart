import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AdvantageRecord extends FirestoreRecord {
  AdvantageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "advantage_name" field.
  String? _advantageName;
  String get advantageName => _advantageName ?? '';
  bool hasAdvantageName() => _advantageName != null;

  // "advantage_promo" field.
  String? _advantagePromo;
  String get advantagePromo => _advantagePromo ?? '';
  bool hasAdvantagePromo() => _advantagePromo != null;

  // "advantage_logo_url" field.
  String? _advantageLogoUrl;
  String get advantageLogoUrl => _advantageLogoUrl ?? '';
  bool hasAdvantageLogoUrl() => _advantageLogoUrl != null;

  // "advantage_description" field.
  String? _advantageDescription;
  String get advantageDescription => _advantageDescription ?? '';
  bool hasAdvantageDescription() => _advantageDescription != null;

  // "advantage_type" field.
  String? _advantageType;
  String get advantageType => _advantageType ?? '';
  bool hasAdvantageType() => _advantageType != null;

  // "advantage_website" field.
  String? _advantageWebsite;
  String get advantageWebsite => _advantageWebsite ?? '';
  bool hasAdvantageWebsite() => _advantageWebsite != null;

  void _initializeFields() {
    _advantageName = snapshotData['advantage_name'] as String?;
    _advantagePromo = snapshotData['advantage_promo'] as String?;
    _advantageLogoUrl = snapshotData['advantage_logo_url'] as String?;
    _advantageDescription = snapshotData['advantage_description'] as String?;
    _advantageType = snapshotData['advantage_type'] as String?;
    _advantageWebsite = snapshotData['advantage_website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('advantage');

  static Stream<AdvantageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvantageRecord.fromSnapshot(s));

  static Future<AdvantageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdvantageRecord.fromSnapshot(s));

  static AdvantageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvantageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvantageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvantageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvantageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvantageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvantageRecordData({
  String? advantageName,
  String? advantagePromo,
  String? advantageLogoUrl,
  String? advantageDescription,
  String? advantageType,
  String? advantageWebsite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'advantage_name': advantageName,
      'advantage_promo': advantagePromo,
      'advantage_logo_url': advantageLogoUrl,
      'advantage_description': advantageDescription,
      'advantage_type': advantageType,
      'advantage_website': advantageWebsite,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvantageRecordDocumentEquality implements Equality<AdvantageRecord> {
  const AdvantageRecordDocumentEquality();

  @override
  bool equals(AdvantageRecord? e1, AdvantageRecord? e2) {
    return e1?.advantageName == e2?.advantageName &&
        e1?.advantagePromo == e2?.advantagePromo &&
        e1?.advantageLogoUrl == e2?.advantageLogoUrl &&
        e1?.advantageDescription == e2?.advantageDescription &&
        e1?.advantageType == e2?.advantageType &&
        e1?.advantageWebsite == e2?.advantageWebsite;
  }

  @override
  int hash(AdvantageRecord? e) => const ListEquality().hash([
        e?.advantageName,
        e?.advantagePromo,
        e?.advantageLogoUrl,
        e?.advantageDescription,
        e?.advantageType,
        e?.advantageWebsite
      ]);

  @override
  bool isValidKey(Object? o) => o is AdvantageRecord;
}
