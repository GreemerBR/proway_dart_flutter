class HomeRepository {
  Future<List<String>> getAllNames() async {
    await Future.delayed(const Duration(seconds: 5));
    return ['Gregory', 'André', 'Anna,', 'Paola', 'Henrique'];
  }

  Stream<int> timedCounter(Duration interval, int? maxCount) async* {
    int index = 0;
    yield index;
    while (true) {
      await Future.delayed(interval);
      yield ++index;
      if (index == maxCount) {
        break;
      }
    }
  }
}
