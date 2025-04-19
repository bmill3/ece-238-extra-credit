# ECE 238 Extra Credit Web App

🧠 A Flutter‑based, multi‑page web demonstration of fundamental ECE 238 concepts, built as an extra credit project at UNM.

**💻 Live Web Deployment →** [https://bmill3.github.io/ece-238-extra-credit/](https://bmill3.github.io/ece-238-extra-credit/)

---

## ✅ Features

### Home Page
- Overview and navigation to all demos.

### Ripple‑Carry Page
- Graphical view of four full‑adder “blocks” with input/output sticks and timing‑propagation triangles.

### Gate‑Level Page
- Circuit‑diagram view of a single full adder built from AND/OR/XOR gates.

### Delay Simulator
- Animated ripple‑delay propagation through the adder chain.

### Interactive Panel
- Enter A/B/Cin bits, view sum/Cout and truth‑table output in real time.

---

## 🛠️ Tech Stack

- **Flutter** (stable channel)  
- **Dart**, **HTML/CSS** for web deployment  
- **GitHub Actions** → automatic rebuild & deploy to GitHub Pages

---

## 📦 Repo Layout

```
/
├─ lib/
│  ├─ main.dart                        # App entry point + route setup
│  └─ pages/
│     ├─ home_page.dart
│     ├─ ripple_carry_page.dart
│     ├─ gate_level_page.dart
│     ├─ delay_propagation_simulator.dart
│     └─ interactive_page.dart
├─ build/                              # Generated web assets
├─ .github/workflows/                 # CI: auto‑build & deploy to GitHub Pages
├─ pubspec.yaml
└─ README.md
```

---

## ▶️ Run Locally

Install Flutter:

```bash
brew install --cask flutter
flutter config --enable-web
```

Get dependencies & serve:

```bash
flutter pub get
flutter run -d chrome
```

Then open `http://localhost:xxxx` in your browser.

---

## 🌐 Deploy to GitHub Pages

Our GitHub Action (`.github/workflows/deploy.yml`) will:

1. Checkout code  
2. Run `flutter build web`  
3. Publish `build/web/` to the `gh-pages` branch

✅ Just push to `main` → your Pages site updates automatically.

---

## 🤝 Contributing

- Fork & create a feature branch  
- Submit a PR with descriptive commit messages  
- CI will validate & auto‑deploy on merge

---

**Author:** Ben Miller — University of New Mexico, CS ’27
