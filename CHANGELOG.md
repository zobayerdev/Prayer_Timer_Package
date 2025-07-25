# Changelog

All notable changes to the `prayer_timer` package will be documented in this file.

## [1.0.2] - 2025-07-25

### Added
- Added The Container to responsive the design
- Added The Container Height, you can edit container height also.

### Fixed
- Fixed The Design and Make it Fully Responsive.

### Changed
- Updated UI to use `Google Font Namer` as the default font for all text elements.
- Improved text styling with dynamic font sizes and weights for better readability.

## [1.0.1] - 2025-07-25

### Added
- Added `fontName` parameter to allow users to specify a custom Google Fonts font (e.g., 'Noto Sans Bengali', 'Hind Siliguri'). Defaults to 'Noto Sans Bengali'.
- Added display of prayer name and remaining time at the center of the progress bar.
- Added message "বর্তমান [নামাজের নাম] নামাযের সময় চলছে" below the progress bar.

### Fixed
- Fixed syntax error in `isTimeInRange` method (`reborn` replaced with `&&`) to ensure accurate prayer time range calculations.

### Changed
- Updated UI to use `Noto Sans Bengali` as the default font for all text elements.
- Improved text styling with dynamic font sizes and weights for better readability.

## [1.0.0] - 2025-07-20

### Initial Release
- A Flutter package to display a customizable circular prayer time timer with a progress bar for Islamic prayer times.
- Features:
  - Fetches prayer times from a custom API or the default Aladhan API.
  - Stores prayer times locally using `shared_preferences`.
  - Displays a circular progress bar that decreases from 100% to 0% during prayer time.
  - Supports customization of progress bar size, colors, and font color.
  - Shows error message if API call fails or no data is available.
  - Unit tests for core functionality included in `test/prayer_timer_test.dart`.