# 📜 PANDUAN LENGKAP CARA MENGEDIT WEBSITE PORTOFOLIO
### Galang Muhamad Arifin — Visual Direction & AI Content Specialist
**Tema: Galaxy Compass / Astrolabe Sci-Fi Celestial (Red, Black, Purple, Gold)**

Panduan praktis langkah-demi-langkah untuk mengelola aset background kosmik, mengganti/menambah foto event, menyesuaikan font astronomi/galaksi, mengatur intensitas glow profesional, serta preview di perangkat lain.

---

## 📁 1. Struktur Folder Proyek
```text
portfolio-kreatif/
├── index.html               <-- File utama website (struktur, layout, teks dwibahasa, slider pop-up)
├── PANDUAN_EDIT.md          <-- Panduan lengkap ini
├── README.md                <-- Info ringkas website
└── assets/
    ├── img/                 <-- Foto profil & render artboard portofolio asli
    │   ├── profile.png      <-- Foto profil asli Galang
    │   └── page_01.jpg s/d page_22.jpg
    ├── events/              <-- Folder khusus tempat kamu menaruh foto per event
    │   ├── euforative/      <-- Taruh foto-foto event EUFORATIVE di sini
    │   ├── work-thrive-funky/
    │   ├── world-cleanup-day/
    │   ├── kkn-ntt/
    │   └── bluphoria/
    └── png/                 <-- Kurasi Aset Kosmik Galaksi & Astrolabium 3D
        ├── galaxy-bg.png        <-- Background Utama Hero: Kompas Kosmik di Tengah Galaksi
        ├── nebula-bg.png        <-- Background Kontak/Footer: Kompas Kosmik di Tengah Nebula
        ├── astrolabe-bg.png     <-- Background Alternatif: Kompas Astrolabium di Nebula Kosmik
        ├── hero-compass.png     <-- 3D Kompas Astrolabium melayang di Hero
        ├── hero-portal.png      <-- Cincin Portal Kosmik berputar lembut di Hero
        ├── cosmic-divider.png   <-- Pembatas horizontal kosmik emas-crimson
        ├── nav-emblem.png       <-- Emblem astrolabium kaca di navbar
        ├── celestial-orb.png    <-- Planet/orb kristal melayang lembut
        ├── celestial-star.png   <-- Bintang galaksi melayang lembut
        ├── pillar-kv.png        <-- Ikon 3D dahlia untuk pilar Key Visual
        ├── pillar-sm.png        <-- Ikon 3D kosmik untuk pilar Social Media
        ├── pillar-ai.png        <-- Ikon 3D kristal bercahaya untuk AI Workflows
        └── skill-photo.png      <-- Ikon 3D galaksi untuk Fotografi
```

---

## 🌌 2. Cara Mengganti / Mengatur Asset Background Galaksi

Aset background utama telah dipasang pada bagian Hero, seluruh halaman (latar ambient halus), dan bagian Kontak:
- **Hero Section**: Menggunakan `assets/png/galaxy-bg.png` (*Kompas Kosmik di Tengah Galaksi*). Dilengkapi filter vignette radial gelap agar teks judul `PORTFOLIO` emas dan deskripsi tetap 100% kontras dan tajam.
- **Whole Page Ambient**: Menggunakan lapisan `galaxy-bg.png` dengan opacity 15% dan blur tipis di latar belakang body untuk memberikan tekstur nebula berkelas tanpa mengganggu keterbacaan teks.
- **Contact Section**: Menggunakan `assets/png/nebula-bg.png` (*Kompas Kosmik di Tengah Nebula*) dengan gradasi gelap menuju obsidian black.

### Cara Menukar Gambar Background:
1. File background tersedia di folder `assets/png/`:
   - `galaxy-bg.png` (Kompas Kosmik di Tengah Galaksi)
   - `nebula-bg.png` (Kompas Kosmik di Tengah Nebula)
   - `astrolabe-bg.png` (Kompas Astrolabium di Nebula Kosmik)
2. Untuk menukar background Hero di `index.html`:
   Cari baris `<!-- Master Background: Kompas Kosmik di Tengah Galaksi with Vignette -->`, lalu ganti `src="assets/png/galaxy-bg.png"` menjadi file lain, misalnya:
   ```html
   <img 
     src="assets/png/astrolabe-bg.png" 
     alt="Background Baru" 
     class="w-full h-full object-cover object-center opacity-65 filter contrast-110 brightness-95 scale-105"
   />
   ```
3. **Mengatur Kepekatan Background**:
   - Jika ingin background lebih terang: Ubah `opacity-65` menjadi `opacity-80`.
   - Jika ingin lebih gelap/samar: Ubah `opacity-65` menjadi `opacity-50`.

---

## ✍️ 3. Penyesuaian Font & Tipografi (Tema Galaxy Compass)

Website kini menggunakan kombinasi font astronomi dan navigasi kosmik modern:

1. **`Syncopate`** (Google Font):
   - Kelas Tailwind: `font-cosmic`
   - Dipakai khusus untuk judul raksasa **`PORTFOLIO`**. Karakter hurufnya sangat lebar (*wide cinematic*), presisi, dan futuristik—memberikan aura kompas astronomi antariksa berwibawa.
2. **`Space Grotesk`** (Google Font):
   - Kelas Tailwind: `font-galaxy` (dan kompatibel dengan `font-arcane`)
   - Dipakai untuk semua judul section, menu navbar, tombol aksi, dan nama desainer. Font ini terinspirasi dari geometri koordinat bintang dan kelengkungan planet.
3. **`Space Mono`** (Google Font):
   - Kelas Tailwind: `font-mono`
   - Dipakai untuk badge koordinat navigasi, tanggal event, dan kode teknis (misal `✦ ARSIP VISUAL // ARAH KOMPAS KOSMIK ✦`, `IPK 3.65`, dll).
4. **`Plus Jakarta Sans`** (Google Font):
   - Kelas Tailwind: `font-sans`
   - Dipakai untuk seluruh isi paragraf deskripsi dan bio agar tetap nyaman dibaca oleh klien maupun HRD.

### Cara Mengganti Konfigurasi Font:
Di bagian `<head>` `index.html`:
```html
<script>
  tailwind.config = {
    theme: {
      extend: {
        fontFamily: {
          sans: ['"Plus Jakarta Sans"', 'sans-serif'],
          galaxy: ['"Space Grotesk"', 'sans-serif'],
          cosmic: ['"Syncopate"', 'sans-serif'],
          mono: ['"Space Mono"', 'monospace'],
          arcane: ['"Space Grotesk"', 'sans-serif'],
          magical: ['"Syncopate"', '"Space Grotesk"', 'sans-serif'],
        }
      }
    }
  }
</script>
```

---

## ✨ 4. Mengatur Efek Glow Agar Tetap Profesional (Tidak Berlebihan)

Efek glow dirancang dengan sistem **diffused optical glow** berkepekatan terkontrol (15% - 35%) agar mata pengunjung tidak silau dan portofolio tetap berkelas:

1. **Glow Teks Emas (`.refined-gold-text`)**:
   Di bagian atas `index.html` tag `<style>`:
   ```css
   filter: drop-shadow(0 4px 18px rgba(229, 195, 104, 0.35)) drop-shadow(0 8px 32px rgba(91, 42, 134, 0.25));
   ```
   *Jika ingin glow lebih tipis*: Turunkan angka opacity `0.35` menjadi `0.20`.
2. **Glow Kartu Kaca (`.cosmic-card`)**:
   Batas kartu kaca bersinar lembut dengan gradasi emas `rgba(201, 162, 75, 0.2)` dan ungu `rgba(91, 42, 134, 0.2)`. Saat disentuh mouse (*hover*), batas kartu berpendar elegan tanpa menutupi gambar karya.
3. **Aura Cahaya Ambient Latar**:
   Menggunakan elemen div blur 140px–170px berkepekatan rendah (10%–18%) di sudut layar untuk menciptakan kedalaman atmosfer kosmik.

---

## 📸 5. Cara Menambah / Mengganti Foto Setiap Event (Multi-Photo Album)

Setiap event memiliki galeri multi-foto interaktif lengkap dengan slider pop-up, tombol panah navigasi, dan deretan thumbnail:

### Langkah Praktis:
1. Masukkan file fotomu ke folder event yang bersangkutan:
   - Contoh untuk EUFORATIVE: `assets/events/euforative/` (misal: `foto1.jpg`, `backdrop.jpg`, `merch.jpg`).
   - Contoh untuk WORK, THRIVE, FUNKY: `assets/events/work-thrive-funky/` (misal: `feed1.jpg`, `grid.jpg`).
2. Buka `index.html`, cari nama eventnya (misal `EUFORATIVE`).
3. Cari atribut **`data-photos`**, lalu tuliskan daftar file fotonya di dalam kurung siku `[...]`:
   ```html
   data-photos='["assets/events/euforative/foto1.jpg", "assets/events/euforative/backdrop.jpg", "assets/events/euforative/merch.jpg"]'
   ```
4. Simpan file `index.html`. Saat kartu tersebut diklik di browser, seluruh foto tersebut akan otomatis tampil di slider pop-up dan bisa digeser!

---

## 🌐 6. Cara Mengubah Teks Dwibahasa (ID & EN)

Di bagian bawah `index.html` terdapat kamus **`translations`**:
```javascript
const translations = {
  id: {
    "nav.about": "Tentang Saya",
    "hero.tagline_top": "✦ ARSIP VISUAL // ARAH KOMPAS KOSMIK ✦",
    "hero.desc": "Teks deskripsi bahasa Indonesia di sini...",
  },
  en: {
    "nav.about": "About Me",
    "hero.tagline_top": "✦ CELESTIAL VISUAL ARCHIVE // GALAXY ASTROLABE ✦",
    "hero.desc": "English description text here...",
  }
};
```
👉 Cukup ubah teks di dalam tanda kutip untuk memperbarui teks versi Indonesia maupun Inggris secara instan.

---

## 🚀 7. Cara Preview di HP / Tablet & Publikasi Online

- **Buka di HP/Tablet Lewat Wi-Fi yang Sama**:
  Buka terminal / PowerShell di laptop, jalankan:
  ```powershell
  cd C:\Users\Admin\.gemini\antigravity\scratch\portfolio-kreatif
  python -m http.server 8080
  ```
  Lalu di HP/tablet (yang tersambung ke Wi-Fi yang sama), buka browser: `http://192.168.100.11:8080`.
- **Kirim 1 Paket File ZIP (Offline)**:
  Kirim file [portfolio-kreatif.zip](file:///C:/Users/Admin/.gemini/antigravity/scratch/portfolio-kreatif.zip) ke tabletmu, ekstrak, dan langsung buka file `index.html`.
- **Publikasikan Jadi Link Resmi (Gratis di Netlify)**:
  Buka [app.netlify.com/drop](https://app.netlify.com/drop) di browser laptop, drag & drop folder `portfolio-kreatif` ke sana. Dalam 20 detik kamu langsung punya link website publik aktif!
