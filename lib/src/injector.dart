import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';

enum Env { TEST, PROD }
final _mockAnswer = json.encode({'ip': '000.000.000.1'});

class Injector {
  static final Injector _singleton = Injector._internal();
  static Env _repoType;

  static void configure(Env repoType) {
    _repoType = repoType;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  Client get client {
    switch (_repoType) {
      case Env.TEST:
        return MockClient((handle) async {
          if ('${handle.url}' == 'https://api.ipify.org/?format=json') {
            return Response(_mockAnswer, 200);
          }
          return Response('Pagina não encontrada', 404);
        });
      default:
        return Client();
    }
  }
}
