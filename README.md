# Calculator Day by Riann

Aplikasi finance personal dengan UI dark galaxy + lightning, dibuat dengan HTML/CSS/JS dan siap dibungkus menjadi Android memakai Capacitor.

## Fitur
- Splash screen
- Login / register
- Dashboard saldo, income, expense, profit/loss
- Cashflow 7 hari
- Financial health & decision engine
- Transaction CRUD + search/filter
- Budget bulanan
- Savings goals
- Calendar transaksi
- Analytics kategori
- Export CSV / JSON + import backup
- Profile & currency
- Native biometric unlock saat dijalankan di Android/iOS via Capacitor

## Jalankan di Acode/browser
Buka `www/index.html`.

## Buat Android project
Di PC/laptop yang sudah punya Node.js, JDK dan Android Studio:
```bash
npm install
npx cap add android
npx cap sync android
npx cap open android
```

Lalu build Release APK:
```bash
npm run android:apk
```

Build AAB:
```bash
npm run android:build
```

File hasil biasanya ada di:
- `android/app/build/outputs/apk/release/app-release.apk`
- `android/app/build/outputs/bundle/release/app-release.aab`

Untuk Play Store, gunakan signed release AAB dan target API Android yang sesuai kebijakan Google Play. Jangan upload debug build.

## Catatan keamanan
Versi demo ini menyimpan data akun/transaksi di localStorage. Untuk aplikasi finansial produksi, jangan simpan password plaintext dan jangan mengandalkan localStorage sebagai penyimpanan rahasia. Gunakan backend, hashing/password auth, secure storage, dan validasi server.

Biometric di APK menggunakan native biometric API melalui plugin Capacitor. Pada browser/Acode, tombol biometrik tidak sama dengan fingerprint native Android.


## Build dari HP dengan GitHub Actions

Upload project ke GitHub. Workflow di `.github/workflows/android-build.yml` akan menyiapkan Node.js, Java, Android SDK, Capacitor, dan Gradle lalu menghasilkan APK dan AAB sebagai GitHub Actions artifacts. Lihat `GITHUB-ACTIONS.md` untuk langkahnya.
