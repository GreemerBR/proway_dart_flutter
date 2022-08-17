import 'package:hooks_riverpod/hooks_riverpod.dart';

// Provider mais simples
final nameUserProvider = Provider((ref) => 'Gregory Viegas Zimmer');

// Provider com estado
final nameSateProvider = StateProvider(((ref) => 'Michel Konig'));
