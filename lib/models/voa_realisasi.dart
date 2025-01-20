import 'package:equatable/equatable.dart';

class VoaRealisasi extends Equatable {
  final int nominal;
  final int newIncome;
  final int oldIncome;
  final int percent;

  const VoaRealisasi({
    required this.nominal,
    required this.newIncome,
    required this.oldIncome,
    required this.percent,
  });

  @override
  List<Object> get props => [nominal, newIncome, oldIncome, percent];

  @override
  String toString() {
    return 'VoaRealisasi(nominal: $nominal, newIncome: $newIncome, oldIncome: $oldIncome, percent: $percent)';
  }
}
