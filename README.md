# Prerequisites

- Install nvim
- Install ripgrep
- (Xcode specific) xcode-build-server

## LSP Specific guidance

### Xcode

1. From root, run below
   ```
   xcode-build-server config -project <YourProject>.xcodeproj -scheme <YourScheme>
   ```
2. Build once in Xcode (e.g. Cmd + B)
