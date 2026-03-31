# Glossary

Terms we learn along the way. Add new ones as you encounter them.

## SwiftUI

| Term | What it means |
|---|---|
| `@main` | Marks the entry point of the app — the first thing that runs |
| `App` | Protocol that defines the structure of your app |
| `View` | Protocol for anything visible on screen — buttons, text, images |
| `body` | The property where you describe what a View looks like |
| `some View` | "This returns a View, but I'm not telling you which type exactly" |
| `VStack` | Stacks views vertically (top to bottom) |
| `HStack` | Stacks views horizontally (left to right) |
| `Button` | A tappable element — takes an action and a label |
| `@State` | A variable that SwiftUI watches — when it changes, the view re-renders |
| `NavigationStack` | Container that lets you push/pop screens |
| `.padding()` | Adds space around a view |
| `.foregroundStyle()` | Sets the text/icon color |
| `.background()` | Sets the background color or view |
| `#Preview` | Macro that creates a live preview in Xcode's canvas |

## AVFoundation

| Term | What it means |
|---|---|
| `AVAudioPlayer` | Class that plays audio files (mp3, wav, etc.) |
| `Bundle.main` | Where your app's resources (sounds, images) live at runtime |

## Git

| Term | What it means |
|---|---|
| `branch` | A parallel version of the code — work without affecting `main` |
| `main` | The primary branch — always contains working, reviewed code |
| `commit` | A snapshot of your changes with a message explaining what you did |
| `push` | Upload your commits to GitHub |
| `pull` | Download the latest commits from GitHub |
| `PR (Pull Request)` | A request to merge your branch into `main` — includes code review |
| `merge` | Combine a branch's changes into another branch |
| `merge conflict` | When two people edited the same lines — Git needs you to choose which version to keep |
| `clone` | Download a full copy of a repo from GitHub to your computer |
