# GitLab-Firebase-CI

## Usage
1. Get FIREBASE_TOKEN for CI
   ```
   firebase login:ci
   ```
   please note your CI Token.
1. Set `FIREBASE_TOKEN` Environmental Variable on your GitLab Repository
   1. Open `Settings > CI/CD > Variables (> Expand)`

   1. Set `FIREBASE_TOKEN` Environmental Variable
      ```yaml
      key: FIREBASE_TOKEN
      value: [your token]
      ```
1. Put your code into *src* directory
1. Open `CI/CD > Jobs`
1. press *"Start"* button


