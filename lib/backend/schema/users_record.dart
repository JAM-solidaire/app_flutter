import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_firstname" field.
  String? _displayFirstname;
  String get displayFirstname => _displayFirstname ?? '';
  bool hasDisplayFirstname() => _displayFirstname != null;

  // "postal" field.
  String? _postal;
  String get postal => _postal ?? '';
  bool hasPostal() => _postal != null;

  // "credits" field.
  int? _credits;
  int get credits => _credits ?? 0;
  bool hasCredits() => _credits != null;

  // "sponsor_code" field.
  String? _sponsorCode;
  String get sponsorCode => _sponsorCode ?? '';
  bool hasSponsorCode() => _sponsorCode != null;

  // "parrain_code" field.
  String? _parrainCode;
  String get parrainCode => _parrainCode ?? '';
  bool hasParrainCode() => _parrainCode != null;

  // "birthday" field.
  int? _birthday;
  int get birthday => _birthday ?? 0;
  bool hasBirthday() => _birthday != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayFirstname = snapshotData['display_firstname'] as String?;
    _postal = snapshotData['postal'] as String?;
    _credits = castToType<int>(snapshotData['credits']);
    _sponsorCode = snapshotData['sponsor_code'] as String?;
    _parrainCode = snapshotData['parrain_code'] as String?;
    _birthday = castToType<int>(snapshotData['birthday']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayFirstname,
  String? postal,
  int? credits,
  String? sponsorCode,
  String? parrainCode,
  int? birthday,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_firstname': displayFirstname,
      'postal': postal,
      'credits': credits,
      'sponsor_code': sponsorCode,
      'parrain_code': parrainCode,
      'birthday': birthday,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayFirstname == e2?.displayFirstname &&
        e1?.postal == e2?.postal &&
        e1?.credits == e2?.credits &&
        e1?.sponsorCode == e2?.sponsorCode &&
        e1?.parrainCode == e2?.parrainCode &&
        e1?.birthday == e2?.birthday;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayFirstname,
        e?.postal,
        e?.credits,
        e?.sponsorCode,
        e?.parrainCode,
        e?.birthday
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
