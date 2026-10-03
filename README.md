# Music Player (Flutter)

The start of a music player app in Flutter. So far it has the account screens and navigation; playback is not built yet.

## What works

- **Login screen** with form validation: email format check and a password rule (at least 8 characters with upper case, lower case, a digit and a special character). Errors show as you type.
- **Sign-up screen** with name, email and password, using the same validation.
- **Animated navigation** between login and sign-up, using a slide transition.
- **Home screen** shell with an app bar and bottom navigation.

Login does not talk to a server. A valid form goes straight to the home screen.

## Not done yet

- Audio playback
- Playlists and track lists on the home screen
- Real authentication

## Run it

Requires the [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart 3.3 or later).

```
flutter pub get
flutter run
```

## Structure

| File | What it does |
|---|---|
| `lib/main.dart` | App entry point and named routes |
| `lib/login_page.dart` | Login form and validation |
| `lib/signup_page.dart` | Sign-up form and validation |
| `lib/home_page.dart` | Home screen shell |
| `lib/slide_transition_x.dart` | Custom slide transition widget (not wired in yet) |
