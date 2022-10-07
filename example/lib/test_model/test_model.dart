import 'package:hive/hive.dart';
import 'package:hivebase/hivebase.dart';

part 'test_model.g.dart';

@HiveType(typeId: 0)
class Test with HiveBaseModel {
  @HiveField(0)
  final String data;
  @HiveField(1)
  final String id;
  Test({
    required this.id,
    required this.data,
  });

  @override
  String get key => id;

  @override
  String toString() {
    return 'Test(id: $id, data: $data)';
  }
}
