# Mariachi Button

A collaborative iOS learning project by **Hari** and **Nickyman**.

Press the button. Hear the mariachi. That's it. The real goal is learning how to build an iOS app together using Git, SwiftUI, and code reviews.

## Prerequisites

- A **Mac** with **Xcode** installed (free from the Mac App Store)
- A **GitHub account**
- **Git** (comes with Xcode Command Line Tools)
- Optional: **Claude Code** for the coaching skill
- Optional: an **iPhone** to run the app on your phone (Simulator works fine too)

## Quick Start

### For Hari (project creator)

The project is already set up. Open it:

```bash
cd ~/Documents/VSC\ Python/Mariachi
open Mariachi.xcodeproj
```

### For Nickyman (joining the project)

1. **Clone the repo:**
   ```bash
   git clone https://github.com/j-garciaruiz/Mariachi.git
   cd Mariachi
   ```

2. **Open in Xcode:**
   ```bash
   open Mariachi.xcodeproj
   ```

3. **Set up signing (required to run on your phone):**
   - In Xcode, click the **Mariachi** project in the sidebar
   - Go to **Signing & Capabilities** tab
   - Change **Team** to your Apple ID (create a free one if needed)
   - If prompted, let Xcode create a provisioning profile

4. **Build and run:**
   - Select a Simulator (e.g., iPhone 16) or your connected iPhone
   - Press **Cmd+B** to build
   - Press **Cmd+R** to run

5. **If running on your phone for the first time:**
   - Connect iPhone via USB
   - On your iPhone: Settings → General → VPN & Device Management → trust your developer certificate
   - Hit Run again

6. **Start the coaching skill (optional but recommended):**
   ```bash
   claude   # from inside the Mariachi/ directory
   /mariachi-coach start
   ```

See `docs/setup-guide.md` for more detailed instructions.

## How We Work Together

1. **Pick a task** from `docs/roadmap.md` (or run `/mariachi-coach next`)
2. **Create a branch** for your task
3. **Make changes**, commit often
4. **Open a Pull Request** for the other person to review
5. **Review each other's PRs** — read the code, leave comments, approve
6. **Merge** and repeat

## Project Structure

```
Mariachi/
├── Mariachi/              ← Swift source files
├── Mariachi.xcodeproj/    ← Xcode project
├── docs/                  ← Learning center
│   ├── roadmap.md         ← What to build next
│   ├── glossary.md        ← Terms we've learned
│   ├── setup-guide.md     ← Detailed setup instructions
│   ├── learning-log-hari.md
│   └── learning-log-nickyman.md
└── .claude/skills/        ← Coaching skill for Claude Code
```

## License

This is a learning project. Use it however you want.
