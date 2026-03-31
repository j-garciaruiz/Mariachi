# Mariachi — Collaborative iOS Learning Project

## What Is This?

A learning project where **Hari** and **Nickyman** build a simple iOS app together (a button that plays a mariachi sound) to learn SwiftUI and Git collaboration.

This is NOT a production project. The goal is **learning by doing**.

## Collaborators

- **Hari** (j-garciaruiz on GitHub) — project creator
- **Nickyman** — collaborator

## Collaboration Rules

1. **Never push directly to `main`** — always work on a feature branch
2. **Every change goes through a Pull Request** — the other person reviews it
3. **Small, frequent PRs** — a few hours of work max, not days
4. **The person who didn't write the code reviews it**
5. **Talk to each other** — a quick message prevents merge conflicts

## Code Conventions

- **Language**: Swift 5
- **UI Framework**: SwiftUI
- **Target**: iOS 17+
- **No third-party dependencies** (for now — keep it simple)
- **File organization**: all Swift source files go in `Mariachi/`

## Coaching Skill

Both collaborators have access to the `/mariachi-coach` skill. Use it for:
- Creating branches: `/mariachi-coach branch "description"`
- Opening PRs: `/mariachi-coach pr`
- Reviewing PRs: `/mariachi-coach review`
- Logging learnings: `/mariachi-coach learn "what I learned"`
- Getting help: `/mariachi-coach help`

## Project Structure

```
Mariachi/
├── Mariachi/              ← Swift source files (auto-synced by Xcode)
│   ├── MariachiApp.swift  ← App entry point
│   ├── ContentView.swift  ← Main view with the button
│   ├── SoundManager.swift ← Audio playback logic
│   ├── Resources/         ← Sound files
│   └── Assets.xcassets/   ← App icons, colors
├── Mariachi.xcodeproj/    ← Xcode project (don't edit manually)
├── docs/                  ← Learning logs, glossary, roadmap
└── .claude/skills/        ← The coaching skill
```
