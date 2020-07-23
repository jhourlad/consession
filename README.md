# Consession

Adds session support to Flutter. Works with mobile, web and (hopefully) desktop build.

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
await session.set("name", "jhourlad");
await session.set("id", 1);
await session.set("price", 10.50);
await session.set("isOK", true);
```

### Read values from the session:
```sh
dynamic token = await Consession().get("token");
```

Session persists throughout the app's lifetime.