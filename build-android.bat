@echo off
npm install
npx cap add android
npx cap sync android
cd android
gradlew.bat bundleRelease
