# Abdallah Elnshar — Flutter Developer Portfolio

A personal portfolio website built with Flutter Web to showcase my work, projects, skills, and experience as a Flutter Developer.

The project focuses on creating a responsive and visually polished web experience while keeping the implementation maintainable through reusable widgets, centralized styling, and a structured responsive system.

## Live Demo

[View Portfolio](https://abdallah-portfolio-1dcd2.web.app/)

## Tech Stack

* Flutter
* Dart
* Flutter Web
* Google Fonts
* Flutter Animate
* Flutter SVG
* URL Launcher
* Firebase Hosting

## Features

* Responsive layouts for mobile, tablet, and desktop
* Single-page portfolio experience
* Smooth navigation between sections
* Custom responsive system with centralized breakpoints and device-specific values
* Centralized theme and typography system
* Animated floating technology icons background
* Projects showcase with GitHub and pub.dev links
* Reusable UI components
* External links using `url_launcher`

## Responsive Design

The portfolio uses a custom responsive system instead of scattering screen-size checks across the UI.

The responsive layer is built around:

* `Breakpoints`
* `DeviceType`
* `Responsive`
* `ResponsiveTheme`
* `ResponsiveValues`

Current breakpoints:

| Device  | Width            |
|---------|------------------|
| Mobile  | Less than 600px  |
| Tablet  | 600px to 1023px  |
| Desktop | 1024px and above |

The UI adapts between device types using dedicated responsive values and, where necessary, different widget implementations for desktop and mobile/tablet layouts.

## Navigation

The portfolio is implemented as a single-page scrolling experience.

Navigation between sections is handled using:

* `GlobalKey`
* `Scrollable.ensureVisible`
* Smooth scroll animations

The current navigation includes:

* About
* Skills
* Projects

## Project Structure

```text
lib/
├── app/
│   └── app.dart
│
├── core/
│   ├── animated_background/
│   │   ├── controller/
│   │   ├── data/
│   │   ├── models/
│   │   └── widgets/
│   │
│   ├── constants/
│   ├── extensions/
│   ├── responsive/
│   └── theme/
│
├── features/
│   └── home/
│       ├── layout/
│       ├── models/
│       ├── pages/
│       └── widgets/
│
└── main.dart
```

### Core

The `core` directory contains shared application infrastructure, including:

* Theme configuration
* Colors and typography
* Responsive utilities
* Application constants
* BuildContext extensions
* Animated background implementation
* Shared assets configuration

### Features

The portfolio UI is organized by feature.

The main portfolio experience currently lives under:

```text
features/home
```

This includes:

* Home layout
* Portfolio models
* Navigation
* Hero section
* About section
* Skills section
* Projects section

## Animated Background

The portfolio includes a custom animated background built around floating technology icons.

The implementation uses:

* A dedicated `FloatingBackgroundController`
* `SingleTickerProviderStateMixin`
* `AnimatedBuilder`
* SVG assets
* Randomized icon positioning and movement

The background ignores pointer events so it does not interfere with user interaction.

## Projects

The portfolio showcases selected Flutter projects, including:

* PB Vault
* Movies
* Evently
* News
* Flutter Easy Theme

Project entries can include:

* Description
* Project image
* GitHub repository
* pub.dev package link

## Getting Started

### Prerequisites

Make sure Flutter is installed and configured for web development.

Check your Flutter installation:

```bash
flutter doctor
```

### Installation

Clone the repository:

```bash
git clone https://github.com/abdallahelnshar123-ux/my_portfolio.git
```

Move into the project directory:

```bash
cd my_portfolio
```

Install dependencies:

```bash
flutter pub get
```

### Run Locally

Run the project in Chrome:

```bash
flutter run -d chrome
```

## Build for Production

Create a production web build:

```bash
flutter build web --release
```

The generated files will be available in:

```text
build/web
```

## Deployment

The project includes Firebase Hosting configuration.

The Firebase Hosting configuration serves the production build from:

```text
build/web
```

Build the project before deploying:

```bash
flutter build web --release
```

Then deploy using Firebase CLI:

```bash
firebase deploy
```

## Quality Assurance

The portfolio was tested on the deployed version across:

* Desktop
* Tablet
* Mobile
* Chrome
* Section navigation
* External links
* GitHub links
* pub.dev links
* LinkedIn links
* Email links
* Images and assets
* Browser refresh
* Direct URL access
* Scroll behavior
* Overflow issues
* Animations across different screen sizes

## Purpose of This Repository

This repository contains the source code of my personal portfolio website.

It is published primarily to demonstrate my Flutter development skills, including Flutter Web development, responsive UI implementation, project organization, reusable components, and custom UI behavior.

## Author

**Abdallah Elnshar**

Flutter Developer

* GitHub: [abdallahelnshar123-ux](https://github.com/abdallahelnshar123-ux)
* Portfolio: [abdallah-portfolio-1dcd2.web.app](https://abdallah-portfolio-1dcd2.web.app/)

## License

This repository contains the source code of my personal portfolio.

The code is published for viewing and evaluation purposes. Reuse, redistribution, or use of this project as a personal portfolio template is not permitted without explicit permission from the author.
##
##