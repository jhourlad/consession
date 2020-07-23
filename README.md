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

### Initialization:
```sh
var session = Consession();
```

### Write values to the session:
```sh
await Consession().set("token", myJWTToken);
```

### Read values from the session:
```sh
dynamic token = await Consession().get("token");
```

Session persists even after navigating to other pages.