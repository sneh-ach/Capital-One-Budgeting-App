// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budgets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BudgetsRecord> _$budgetsRecordSerializer =
    new _$BudgetsRecordSerializer();

class _$BudgetsRecordSerializer implements StructuredSerializer<BudgetsRecord> {
  @override
  final Iterable<Type> types = const [BudgetsRecord, _$BudgetsRecord];
  @override
  final String wireName = 'BudgetsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BudgetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.budetName;
    if (value != null) {
      result
        ..add('budetName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budgetCreated;
    if (value != null) {
      result
        ..add('budgetCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.budgetDescription;
    if (value != null) {
      result
        ..add('budgetDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBudgets;
    if (value != null) {
      result
        ..add('userBudgets')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.budgetStartDate;
    if (value != null) {
      result
        ..add('budgetStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.budgetTime;
    if (value != null) {
      result
        ..add('budgetTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budgetAmount;
    if (value != null) {
      result
        ..add('budgetAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budgetAmountNumber;
    if (value != null) {
      result
        ..add('budgetAmountNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.budgetSpentNumber;
    if (value != null) {
      result
        ..add('budgetSpentNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.budgetSpent;
    if (value != null) {
      result
        ..add('budgetSpent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BudgetsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BudgetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'budetName':
          result.budetName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetCreated':
          result.budgetCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'budgetDescription':
          result.budgetDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBudgets':
          result.userBudgets = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'budgetStartDate':
          result.budgetStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'budgetTime':
          result.budgetTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetAmount':
          result.budgetAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetAmountNumber':
          result.budgetAmountNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'budgetSpentNumber':
          result.budgetSpentNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'budgetSpent':
          result.budgetSpent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$BudgetsRecord extends BudgetsRecord {
  @override
  final String? budetName;
  @override
  final DateTime? budgetCreated;
  @override
  final String? budgetDescription;
  @override
  final DocumentReference<Object?>? userBudgets;
  @override
  final DateTime? budgetStartDate;
  @override
  final String? budgetTime;
  @override
  final String? budgetAmount;
  @override
  final int? budgetAmountNumber;
  @override
  final int? budgetSpentNumber;
  @override
  final String? budgetSpent;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BudgetsRecord([void Function(BudgetsRecordBuilder)? updates]) =>
      (new BudgetsRecordBuilder()..update(updates))._build();

  _$BudgetsRecord._(
      {this.budetName,
      this.budgetCreated,
      this.budgetDescription,
      this.userBudgets,
      this.budgetStartDate,
      this.budgetTime,
      this.budgetAmount,
      this.budgetAmountNumber,
      this.budgetSpentNumber,
      this.budgetSpent,
      this.ffRef})
      : super._();

  @override
  BudgetsRecord rebuild(void Function(BudgetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetsRecordBuilder toBuilder() => new BudgetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetsRecord &&
        budetName == other.budetName &&
        budgetCreated == other.budgetCreated &&
        budgetDescription == other.budgetDescription &&
        userBudgets == other.userBudgets &&
        budgetStartDate == other.budgetStartDate &&
        budgetTime == other.budgetTime &&
        budgetAmount == other.budgetAmount &&
        budgetAmountNumber == other.budgetAmountNumber &&
        budgetSpentNumber == other.budgetSpentNumber &&
        budgetSpent == other.budgetSpent &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, budetName.hashCode),
                                            budgetCreated.hashCode),
                                        budgetDescription.hashCode),
                                    userBudgets.hashCode),
                                budgetStartDate.hashCode),
                            budgetTime.hashCode),
                        budgetAmount.hashCode),
                    budgetAmountNumber.hashCode),
                budgetSpentNumber.hashCode),
            budgetSpent.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BudgetsRecord')
          ..add('budetName', budetName)
          ..add('budgetCreated', budgetCreated)
          ..add('budgetDescription', budgetDescription)
          ..add('userBudgets', userBudgets)
          ..add('budgetStartDate', budgetStartDate)
          ..add('budgetTime', budgetTime)
          ..add('budgetAmount', budgetAmount)
          ..add('budgetAmountNumber', budgetAmountNumber)
          ..add('budgetSpentNumber', budgetSpentNumber)
          ..add('budgetSpent', budgetSpent)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BudgetsRecordBuilder
    implements Builder<BudgetsRecord, BudgetsRecordBuilder> {
  _$BudgetsRecord? _$v;

  String? _budetName;
  String? get budetName => _$this._budetName;
  set budetName(String? budetName) => _$this._budetName = budetName;

  DateTime? _budgetCreated;
  DateTime? get budgetCreated => _$this._budgetCreated;
  set budgetCreated(DateTime? budgetCreated) =>
      _$this._budgetCreated = budgetCreated;

  String? _budgetDescription;
  String? get budgetDescription => _$this._budgetDescription;
  set budgetDescription(String? budgetDescription) =>
      _$this._budgetDescription = budgetDescription;

  DocumentReference<Object?>? _userBudgets;
  DocumentReference<Object?>? get userBudgets => _$this._userBudgets;
  set userBudgets(DocumentReference<Object?>? userBudgets) =>
      _$this._userBudgets = userBudgets;

  DateTime? _budgetStartDate;
  DateTime? get budgetStartDate => _$this._budgetStartDate;
  set budgetStartDate(DateTime? budgetStartDate) =>
      _$this._budgetStartDate = budgetStartDate;

  String? _budgetTime;
  String? get budgetTime => _$this._budgetTime;
  set budgetTime(String? budgetTime) => _$this._budgetTime = budgetTime;

  String? _budgetAmount;
  String? get budgetAmount => _$this._budgetAmount;
  set budgetAmount(String? budgetAmount) => _$this._budgetAmount = budgetAmount;

  int? _budgetAmountNumber;
  int? get budgetAmountNumber => _$this._budgetAmountNumber;
  set budgetAmountNumber(int? budgetAmountNumber) =>
      _$this._budgetAmountNumber = budgetAmountNumber;

  int? _budgetSpentNumber;
  int? get budgetSpentNumber => _$this._budgetSpentNumber;
  set budgetSpentNumber(int? budgetSpentNumber) =>
      _$this._budgetSpentNumber = budgetSpentNumber;

  String? _budgetSpent;
  String? get budgetSpent => _$this._budgetSpent;
  set budgetSpent(String? budgetSpent) => _$this._budgetSpent = budgetSpent;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BudgetsRecordBuilder() {
    BudgetsRecord._initializeBuilder(this);
  }

  BudgetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _budetName = $v.budetName;
      _budgetCreated = $v.budgetCreated;
      _budgetDescription = $v.budgetDescription;
      _userBudgets = $v.userBudgets;
      _budgetStartDate = $v.budgetStartDate;
      _budgetTime = $v.budgetTime;
      _budgetAmount = $v.budgetAmount;
      _budgetAmountNumber = $v.budgetAmountNumber;
      _budgetSpentNumber = $v.budgetSpentNumber;
      _budgetSpent = $v.budgetSpent;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BudgetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BudgetsRecord;
  }

  @override
  void update(void Function(BudgetsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BudgetsRecord build() => _build();

  _$BudgetsRecord _build() {
    final _$result = _$v ??
        new _$BudgetsRecord._(
            budetName: budetName,
            budgetCreated: budgetCreated,
            budgetDescription: budgetDescription,
            userBudgets: userBudgets,
            budgetStartDate: budgetStartDate,
            budgetTime: budgetTime,
            budgetAmount: budgetAmount,
            budgetAmountNumber: budgetAmountNumber,
            budgetSpentNumber: budgetSpentNumber,
            budgetSpent: budgetSpent,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
