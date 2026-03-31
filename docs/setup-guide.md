# Setup Guide

Detailed instructions for getting the Mariachi project running on your machine.

---

## For Hari (Project Creator)

You already created the Xcode project. Your setup is done. To open the project:

```bash
open ~/Documents/VSC\ Python/Mariachi/Mariachi.xcodeproj
```

### Adding the sound file to the Xcode target

The `jarabe_tapatio.mp3` file is already in `Mariachi/Resources/`. The project uses auto-sync, so Xcode should detect it automatically.

**Important**: In Xcode's sidebar you'll see two "Mariachi" entries — the first one (blueprint icon) is the **project**, the second one (folder icon) is the **source folder**. Your code and resources live in the **source folder** (the second one).

If the sound doesn't play when you tap the button, you may need to add it manually:

1. In the **Project Navigator** (left sidebar), right-click the **second** `Mariachi` folder (the one with the blue folder icon, not the blueprint icon)
2. Select **Add Files to "Mariachi"...**
3. Navigate to `Mariachi/Resources/jarabe_tapatio.mp3`
4. Make sure **"Add to targets: Mariachi"** is checked
5. Click **Add**

---

## For Nickyman (Joining the Project)

### Step 1: Install Xcode

1. Open the **Mac App Store**
2. Search for **Xcode**
3. Click **Get** / **Install** (it's free, but ~12 GB download)
4. Once installed, open Xcode once to accept the license and install components
5. Verify installation:
   ```bash
   xcodebuild -version
   ```
   You should see something like `Xcode 16.x`

### Step 2: Install Git and GitHub CLI

Git comes with Xcode. Verify:
```bash
git --version
```

Install GitHub CLI (optional but recommended):
```bash
brew install gh
gh auth login
```

### Step 3: Clone the Repository

```bash
git clone https://github.com/j-garciaruiz/Mariachi.git
cd Mariachi
```

### Step 4: Open in Xcode

```bash
open Mariachi.xcodeproj
```

### Step 5: Set Up Code Signing

This is required to run on a physical iPhone (not needed for Simulator):

1. In Xcode, click **Mariachi** in the project navigator (the blue icon at the top)
2. Select the **Mariachi** target (under TARGETS)
3. Go to the **Signing & Capabilities** tab
4. Under **Signing**, change **Team** to your Apple ID
   - If you don't see your Apple ID, go to Xcode → Settings → Accounts → add your Apple ID
5. Xcode will automatically create a provisioning profile

**Important**: Your signing settings are local to your machine. They won't conflict with Hari's settings because they're excluded from Git (via `.gitignore`).

### Step 6: Build and Run

1. In the toolbar at the top, select a target device:
   - **Simulator**: Choose any iPhone model (e.g., iPhone 16)
   - **Your iPhone**: Connect via USB and select it from the dropdown
2. Press **Cmd+B** to build (verify no errors)
3. Press **Cmd+R** to run

### Step 7: Trust Developer Certificate (iPhone only)

The first time you run on your phone:

1. The build will succeed but the app won't open on your phone
2. On your iPhone, go to: **Settings → General → VPN & Device Management**
3. Find your Apple ID under "Developer App"
4. Tap **Trust**
5. Go back to Xcode and hit **Run** again

The app will now install and open on your phone.

### Step 8: Start Learning with the Coaching Skill

If you have Claude Code installed:
```bash
cd Mariachi
claude
/mariachi-coach start
```

The coaching skill will verify your setup and walk you through the workflow.

---

## Troubleshooting

### "No signing certificate" error
Go to Xcode → Settings → Accounts → make sure your Apple ID is added and has a signing certificate.

### App expires after 7 days
This is normal with a free Apple ID. Just hit Run again from Xcode to reinstall.

### Build fails with "module not found"
Try: Product → Clean Build Folder (Shift+Cmd+K), then build again.

### Merge conflict in project.pbxproj
This is the most annoying conflict in iOS development. Usually, accept the incoming changes, then re-add your file in Xcode. Ask Claude for help if stuck.
