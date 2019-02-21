import 'package:test/test.dart';
import 'package:ip_externo/ip_externo.dart';
import 'package:ip_externo/src/injector.dart';

void when(String context, Function() func) => group('when $context', func);
void describe(String method, Function() func) => group('.$method', func);

void main() {
  setUpAll(() {
    Injector.configure(Env.TEST);
  });

  when('server responds', () {
    describe('ipAddress', () {
      test('it returns stubbed ip', () async {
        final ipAddress = await IpExterno.ipAddress;
        expect(ipAddress, '000.000.000.1');
      });
    });
  });
}
