# Prayer Timer

A Flutter package to display a customizable circular prayer time timer with a progress bar for Islamic prayer times. It supports fetching prayer times from a custom API or the default Aladhan API and stores them locally using `shared_preferences`. If no data is available from the API, it displays an error message.

## Screenshots

<img width="386" height="251" alt="image" src="https://github.com/user-attachments/assets/98f15f9c-ba14-4196-b91b-000e179e2cfd" />

## Features
- Displays a circular progress bar that decreases as the prayer time progresses (from 100% to 0%).
- Fetches prayer times from a custom API or the default Aladhan API.
- Persists prayer time data locally using `shared_preferences`.
- Shows the current prayer, next prayer, start time, end time, and remaining time.
- Customizable progress bar size, progress bar color, progress bar background color, and font color.
- Supports custom API URLs for fetching prayer times.

## Installation
Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  prayer_timer: ^1.0.3
```

Run `flutter pub get` to install the package.

## Usage
Import the package and add the `PrayerTimer` widget to your app:

```dart
import 'package:flutter/material.dart';
import 'package:prayer_timer/prayer_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Prayer Timer')),
        body: PrayerTimer(
          apiUrl: 'https://api.aladhan.com/v1/timingsByCity?city=Dhaka&country=Bangladesh&method=2',
          city: 'Dhaka',
          country: 'Bangladesh',
          method: 2,
          progressBarSize: 250.0,
          progressBarColor: Colors.blue,
          progressBarBackgroundColor: Colors.grey[200],
          fontColor: Colors.deepPurple,
          fontName: 'Hind Siliguri',
          containerHeight: '250', // Custom font color
        ),
      ),
    );
  }
}
```

### Parameters
- `apiUrl` (optional): Custom API URL for fetching prayer times. Defaults to Aladhan API if not provided.
- `city`: The city for which to fetch prayer times (e.g., 'Dhaka').
- `country`: The country for which to fetch prayer times (e.g., 'Bangladesh').
- `method`: The calculation method for prayer times (default is 2).
- `progressBarSize`: The size (width and height) of the progress bar (default is 200.0).
- `progressBarColor`: The color of the progress bar (default is Colors.green).
- `progressBarBackgroundColor`: The background color of the progress bar (default is Colors.grey).
- `fontColor`: The color of the text (default is Colors.black).
- `fontName`: The font name use for text color.
- `containerHeight`: The properties use for container height maintain.

## Dependencies
- `http: ^1.2.0`
- `shared_preferences: ^2.2.3`
- `google_fonts: ^6.2.1`

## Example
An example app is included in the `example` directory. To run it:
1. Navigate to the `example` directory.
2. Run `flutter pub get`.
3. Run `flutter run`.

## License
This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
