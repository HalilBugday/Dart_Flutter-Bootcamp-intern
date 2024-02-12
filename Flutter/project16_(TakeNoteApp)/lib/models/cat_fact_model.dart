import 'dart:convert';

class CatFactModel {
  final String fact;
  final int length;
  CatFactModel({
    required this.fact,
    required this.length,
  });

  CatFactModel copyWith({
    String? fact,
    int? length,
  }) {
    return CatFactModel(
      fact: fact ?? this.fact,
      length: length ?? this.length,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fact': fact,
      'length': length,
    };
  }

  factory CatFactModel.fromMap(Map<String, dynamic> map) {
    return CatFactModel(
      fact: map['fact'] ?? '',
      length: map['length']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatFactModel.fromJson(String source) => CatFactModel.fromMap(json.decode(source));

  @override
  String toString() => 'CatFactModel(fact: $fact, length: $length)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CatFactModel && other.fact == fact && other.length == length;
  }

  @override
  int get hashCode => fact.hashCode ^ length.hashCode;
}
