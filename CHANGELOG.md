## 2.0.0

- **(Breakingchanges)**
  - Renamed class to `IpExterno` instead of `ip_externo`
  - Removed some methods: `ReadIP`, `getIP`, `getResponse` e `getBody`
  - Now the lib consumes new API to get your external ip
- Added tests and .travis

### Breakingchanges

```dart
import 'package:ip_externo/ip_externo.dart';

void yourFunction() async {
  final yourIp = await IpExterno.ipAddress;
}
``` 

## 1.0.3

- Fixed output text from getIP();

## 1.0.2

- Fixed README.md

## 1.0.1

- Fixed output text from getIP();

## 1.0.0

- First version, developer by Mateus Penha.