# WhatsApp UI Clone

A Flutter app that replicates the WhatsApp interface with a dark theme. This is a **UI clone only**—it does not connect to WhatsApp or any messaging backend.

## Features

- **Chats** — Chat list with search (Meta AI / Search), chat tiles (avatar, name, last message, time, unread count), and a floating action button for new chats
- **Updates** — Status section with “My status” and “Recent updates” bubbles
- **Communities** — “New community” entry and community list (e.g. Flutter Developers, Local Neighborhood)
- **Calls** — “Create call link” and recent calls list (incoming/outgoing, missed, with timestamps)

Navigation between these sections is done via a bottom navigation bar (Chats, Updates, Communities, Calls).

## Project structure

```
lib/
├── main.dart                 # App entry, MaterialApp with dark theme
├── screens/
│   ├── shell_screen.dart     # Bottom nav shell and page switching
│   ├── chat_screen.dart      # Chats tab
│   ├── updates_screen.dart   # Updates (status) tab
│   ├── communities_screen.dart
│   └── calls_screen.dart
└── widgets/
    ├── appbar_widget.dart
    ├── bottom_navigator_widget.dart
    ├── chat_bubble_widget.dart    # Chat list tile
    ├── pop_menu_widget.dart
    └── update_bubble_widget.dart  # Status/update tile
```

## Requirements

- [Flutter](https://flutter.dev/) (SDK ^3.10.7)
- Dart 3.10.7 or compatible

## Dependencies

- `material_symbols_icons` — Material Symbols
- `flutter_tabler_icons` — Tabler icons (used in nav and chat FAB)

## Getting started

1. Clone the repo and open the project folder.

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

   Or pick a device:

   ```bash
   flutter devices
   flutter run -d <device_id>
   ```

Supported platforms include Android, iOS, Linux, and macOS (see `android/`, `ios/`, `linux/`, `macos/`).

## License

See [LICENSE](LICENSE) in the project root.
