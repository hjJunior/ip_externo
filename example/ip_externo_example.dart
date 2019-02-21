import 'package:ip_externo/ip_externo.dart';

main() async {
  try {
    print(await IpExterno.ipAddress);
  } on Exception catch (error) {
    print('something got wrong');
    print(error);
  }
}
