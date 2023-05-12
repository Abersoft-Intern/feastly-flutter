import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'BASE_URL')
  static const baseUrl = _Env.baseUrl;
}
