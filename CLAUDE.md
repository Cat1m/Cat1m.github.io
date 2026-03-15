# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Flutter Web portfolio site for Le Minh Chien, deployed to GitHub Pages (Cat1m.github.io).

## Common Commands

```bash
flutter pub get                              # Install dependencies
flutter analyze                              # Run linter
flutter run -d chrome                        # Run dev server in Chrome
flutter build web --release --base-href /    # Production build
dart run build_runner build --delete-conflicting-outputs  # Regenerate code (Freezed models, DI config)
```

## Architecture

**BLoC/Cubit + Clean Architecture** with GetIt dependency injection (via `injectable`).

- `lib/core/di/` — DI setup with GetIt + injectable. `injection.config.dart` is auto-generated.
- `lib/core/ui/theme/` — Material3 theming (light/dark) with custom `AppColors`, `AppDimens`, `AppTextStyles`.
- `lib/core/ui/extensions/context_extension.dart` — BuildContext helpers for colors, text styles, layout queries.
- `lib/features/` — Feature modules, each with models, repositories, and UI (cubits + widgets).

**Feature structure pattern:**
```
features/<feature>/
├── models/          # Freezed data classes
├── repositories/    # Data sources
├── cubit/           # State management
└── ui/              # Widgets and pages
```

**Key features:** `about`, `projects`, `experience`, `skills`, `certificates`, `blogs`.

**Portfolio page** (`features/portfolio/`) orchestrates all sections using `ScrollablePositionedList` for scroll-aware navigation with a fixed header that highlights the active section.

## Code Generation

Models use **Freezed** for immutability + `json_serializable`. DI uses **injectable**. After changing any `@freezed` model or `@injectable` service, run the build_runner command above. Generated files follow the `*.freezed.dart` and `*.g.dart` naming convention.

## Deployment

CI/CD via `.github/workflows/deploy.yml`: pushes to `main` trigger a Flutter web build deployed to the `gh-pages` branch. Uses Flutter 3.38.6.

## Language

Code comments and content are in Vietnamese.
