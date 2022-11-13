// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserListRecord> _$userListRecordSerializer =
    new _$UserListRecordSerializer();

class _$UserListRecordSerializer
    implements StructuredSerializer<UserListRecord> {
  @override
  final Iterable<Type> types = const [UserListRecord, _$UserListRecord];
  @override
  final String wireName = 'UserListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserListRecord extends UserListRecord {
  @override
  final DocumentReference<Object?>? userName;
  @override
  final BuiltList<String>? users;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserListRecord([void Function(UserListRecordBuilder)? updates]) =>
      (new UserListRecordBuilder()..update(updates))._build();

  _$UserListRecord._({this.userName, this.users, this.ffRef}) : super._();

  @override
  UserListRecord rebuild(void Function(UserListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListRecordBuilder toBuilder() =>
      new UserListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListRecord &&
        userName == other.userName &&
        users == other.users &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, userName.hashCode), users.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserListRecord')
          ..add('userName', userName)
          ..add('users', users)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserListRecordBuilder
    implements Builder<UserListRecord, UserListRecordBuilder> {
  _$UserListRecord? _$v;

  DocumentReference<Object?>? _userName;
  DocumentReference<Object?>? get userName => _$this._userName;
  set userName(DocumentReference<Object?>? userName) =>
      _$this._userName = userName;

  ListBuilder<String>? _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String>? users) => _$this._users = users;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserListRecordBuilder() {
    UserListRecord._initializeBuilder(this);
  }

  UserListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _users = $v.users?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserListRecord;
  }

  @override
  void update(void Function(UserListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserListRecord build() => _build();

  _$UserListRecord _build() {
    _$UserListRecord _$result;
    try {
      _$result = _$v ??
          new _$UserListRecord._(
              userName: userName, users: _users?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
