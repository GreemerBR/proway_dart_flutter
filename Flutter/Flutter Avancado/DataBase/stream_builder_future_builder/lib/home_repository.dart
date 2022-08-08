class HomeRepository {
  Future<List<String>> getAllNames() async {
    await Future.delayed(const Duration(seconds: 5));
    return ['Gregory', 'André', 'Anna,', 'Paola', 'Henrique'];
  }
}
