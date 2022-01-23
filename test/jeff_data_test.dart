import 'package:test/test.dart';
import '../lib/Jeffrey/jeff_data.dart';

void main() {
  group('Jeffrey Points', () {
    test('points should start at 0', () {
      expect(JeffBrain().jeffreyPoints, 0);
    });

    test('points should be incremented', () {
      JeffBrain jeffBrain = JeffBrain();
      jeffBrain.increasePoints();

      expect(jeffBrain.jeffreyPoints, 1);
    });

    test('points should be decremented', () {
      final JeffBrain jeffBrain = JeffBrain();
      jeffBrain.decreasePoints();

      expect(jeffBrain.jeffreyPoints, -1);
    });
  });
}
