import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointments_record.g.dart';

abstract class AppointmentsRecord
    implements Built<AppointmentsRecord, AppointmentsRecordBuilder> {
  static Serializer<AppointmentsRecord> get serializer =>
      _$appointmentsRecordSerializer;

  String? get appointmentName;

  String? get appointmentDescription;

  DocumentReference? get appointmentPerson;

  DateTime? get appointmentTime;

  String? get appointmentType;

  String? get appointmentEmail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppointmentsRecordBuilder builder) => builder
    ..appointmentName = ''
    ..appointmentDescription = ''
    ..appointmentType = ''
    ..appointmentEmail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppointmentsRecord._();
  factory AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder) updates]) =
      _$AppointmentsRecord;

  static AppointmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? appointmentName,
  String? appointmentDescription,
  DocumentReference? appointmentPerson,
  DateTime? appointmentTime,
  String? appointmentType,
  String? appointmentEmail,
}) {
  final firestoreData = serializers.toFirestore(
    AppointmentsRecord.serializer,
    AppointmentsRecord(
      (a) => a
        ..appointmentName = appointmentName
        ..appointmentDescription = appointmentDescription
        ..appointmentPerson = appointmentPerson
        ..appointmentTime = appointmentTime
        ..appointmentType = appointmentType
        ..appointmentEmail = appointmentEmail,
    ),
  );

  return firestoreData;
}
