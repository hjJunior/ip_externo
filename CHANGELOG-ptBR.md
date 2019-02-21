## 2.0.0

- **(Breakingchanges)**
  - Classe renomeada para `IpExterno` ao inves de `ip_externo`
  - Removido os métodos: `ReadIP`, `getIP`, `getResponse` e `getBody`
  - Utilização de uma nova api para detectar o ip externo
- Adicionado testes e Travis CI

### Breakingchanges


```dart
import 'package:ip_externo/ip_externo.dart';

void yourFunction() async {
  final meuIp = await IpExterno.ipAddress;
}
``` 

## 1.0.3

- Correção texto de saída em getIP();

## 1.0.2

- Correção README.md

## 1.0.1

- Correção texto de saída em getIP();

## 1.0.0

- Versão inicial, desenvolvido por Mateus Penha.