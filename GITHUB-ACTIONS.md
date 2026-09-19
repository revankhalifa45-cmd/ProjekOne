# Calculator Day by Riann — GitHub Actions

## Cara build APK/AAB dari HP

1. Buat repository baru di GitHub.
2. Upload seluruh isi project ini ke repository.
3. Pastikan folder berikut ikut ter-upload:
   `.github/workflows/android-build.yml`
4. Buka tab **Actions** di repository.
5. Pilih **Build Android APK and AAB**.
6. Tekan **Run workflow**.
7. Tunggu sampai status hijau.
8. Buka hasil workflow dan bagian **Artifacts**.
9. Download:
   - `calculator-day-riann-apk` → APK
   - `calculator-day-riann-aab` → AAB

Workflow otomatis menyiapkan Node.js, Java, Android SDK, Capacitor, Gradle, lalu membuat APK dan AAB.

## Catatan release

AAB yang dihasilkan workflow ini adalah **unsigned release bundle**. Untuk publikasi Google Play, gunakan signing/keystore yang aman dan jangan commit file keystore atau password ke repository.

Untuk pengujian HP, gunakan APK debug/release yang dihasilkan sebagai artifact.

## Struktur penting

```text
calculator-day-riann/
├── .github/
│   └── workflows/
│       └── android-build.yml
├── www/
│   └── index.html
├── package.json
├── capacitor.config.ts
└── README.md
```
