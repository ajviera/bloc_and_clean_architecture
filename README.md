# Challenge: Team Members app

The main objective of this exercise is to practice creating a project using the following packages:

- Clean architecture
- BLoC (package [flutter_bloc](https://pub.dev/packages/flutter_bloc))
- BLoC Test (package [bloc_test](https://pub.dev/packages/bloc_test))
- GetIt (package [get_it](https://pub.dev/packages/get_it))
- Dependency Injection (package [injectable](https://pub.dev/packages/injectable))
- Go Router (package [go_router](https://pub.dev/packages/go_router))
- Intl (packages [intl](https://pub.dev/packages/intl) - [intl_utils](https://pub.dev/packages/intl_utils))

[This challenge was used as a guide](
https://docs.google.com/document/d/1cegH-q7oACtvJXKJ3sOpPYXa0d9oRvyFbRcykJwPcmc/edit)

## Getting Started

|                 |        |
| --------------- | ------ |
| Flutter version | 3.19.2 |
| Dart Version    | 3.3.0  |

### Steps

1. Have Flutter & Dart installed.
2. Execute the command: `flutter pub get`.
3. Run the app using F5 or the ▶ button.

### Tips
- When adding new texts it is necessary to run the following command in the terminal:
`dart run intl_utils:generate`

- To make modifications to the generated files, use the following command:
`dart run build_runner build --delete-conflicting-outputs`