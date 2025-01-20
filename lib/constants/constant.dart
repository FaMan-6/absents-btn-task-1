import 'package:absents_btn/models/baseline.dart';
import 'package:absents_btn/models/user.dart';
import 'package:absents_btn/models/voa_realisasi.dart';

List<Baseline> baselineData = [
  Baseline(
    nominal: 7200000000,
    growthRealisasi: 3500000000,
    growthTarget: 5000000000,
    posisiRealisasi: 6100000000,
    posisiTarget: 12200000000,
  ),
];

List<User> userData = [
  User(
    name: 'Gusti',
    job: 'Maintanance Ops',
  ),
];

List<VoaRealisasi> voaRealisasiData = [
  VoaRealisasi(
    nominal: 4323342322,
    newIncome: 2823342322,
    oldIncome: 1500000000,
    percent: 38,
  ),
];
