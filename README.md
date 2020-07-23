# Consession

An easy-to-use session for Flutter that works on mobile, web and (hopefully) desktop apps.

  - Implement with one line of code
  - Simple and lightweight
  - Covid-free!

### How to use

Add this to your package's pubspec.yaml file:

Install the dependencies and devDependencies and start the server.

```sh
dependencies:
  consession: ^0.0.1
```

### Write values to the session:
```sh
await Consession().set("token", myJWTToken);
```
or
```sh
var session = Concession();
await session.set("token", myJWTToken);
await session.set("another", "Hit me baby one more time");
await session.set("andAnother", "But wait, there's more!");
```

### Read values from the session:
```sh
dynamic token = await Consession().get("token");
```

Session persists throughout the app's lifetime.