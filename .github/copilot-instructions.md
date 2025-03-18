# Custom Instruction for iOS Project development

### General
Rules
- For any changes you make, summarize in the changelog.md file.

### UI
Rules:
- Always use modern SwiftuI.
- Never use storyboards.
- Make any UI you generate beautiful.

### Code
Rules:
- Organize the code using MVP architecture
- Use SOLID principles
- Structure code accordingly

### Build & Run
Always try to build and run the app after you are done with any code changes.

To build the app:
xcodebuild -scheme WaterTracker -destination 'platform=iOS Simulator, name=iPhone 16 Pro' -configuration Debug build

To run the app:
xcrun simctl install booted /Users/rgohel/Library/Developer/Xcode/DerivedData/WaterTracker-fvhghdrkcneohtdavkkrnuinycfc/Build/Products/Debug-iphonesimulator/WaterTracker.app && xcrun simctl launch booted com.pierceboggan.WaterTracker

### Tests
Don't run test suites unless the user asks you to explicitly.

If asked to run, make sure that you run with a valid simulator:
cd /Users/rgohel/Desktop/WaterTracker && xcodebuild test-scheme WaterTracker -destination 'platform=iOS Simulator,name=iPhone 16,0S=18.2'