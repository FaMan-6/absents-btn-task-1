import 'package:equatable/equatable.dart';

class Baseline extends Equatable {
  final int nominal;
  final int growthRealisasi;
  final int growthTarget;
  final int posisiRealisasi;
  final int posisiTarget;

  const Baseline({
    required this.nominal,
    required this.growthRealisasi,
    required this.growthTarget,
    required this.posisiRealisasi,
    required this.posisiTarget,
  });

  @override
  List<Object> get props => [
        nominal,
        growthRealisasi,
        growthTarget,
        posisiRealisasi,
        posisiTarget,
      ];
}
