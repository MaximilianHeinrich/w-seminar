Docker nur zu Veranschaulichungszwecken gedacht:
make build           # alle Images bauen
make run-qrng        # z. B. deinen QRNG-Test
make build-firmware  # Kompiliert Firmware mit idf.py
make build-paper     # Baut dein LaTeX-PDF

quantum-crypto-walkie/
│
├── backend/                # Serverlogik, APIs, Schlüsselverteilung
│   ├── app/                # Anwendungscode (Python, Node.js, etc.)
│   ├── crypto/             # Kryptografiemodule (One-Time Pad, AES, ...)
│   ├── protocols/          # Kommunikationsprotokolle (z. B. QRNG → Walkie)
│   └── tests/              # Unittests für Backendlogik
│
├── client/                 # UI, CLI oder Weboberfläche
│   ├── src/                # Frontendcode (z. B. React, CLI in Python/JS)
│   ├── public/             # Statische Dateien
│   └── tests/              # Frontendtests
│
├── hardware/               # Schaltpläne, Firmware, Aufbauanleitungen
│   ├── qrng/               # Lasersystem, PBS, Polarisatoren
│   │   ├── firmware/       # Mikrocontrollercode (C/C++, Micropython)
│   │   ├── optics/         # Aufbaufotos, CAD-Zeichnungen, Justageanleitungen
│   │   └── calibration/    # Kalibrierung der Zufallsquelle
│   └── walkie/             # Umbauprojekte für das Funkgerät
│       ├── schematics/     # Schaltplan und PCB ggf.
│       ├── firmware/       # Firmware für Mikrocontroller
│       └── integration/    # Verbindung mit QRNG & Verschlüsselung
│
├── docs/                   # Dokumentation für W-Seminar & Preisbewerbung
│   ├── seminararbeit/      # W-Seminararbeit (LaTeX, PDF, Quellen)
│   ├── poster/             # Poster/Präsentationen für Wettbewerbe
│   └── tech/               # Technische Spezifikationen, Papers, Literatur
│
├── example/                # Demoanwendungen, Proof-of-Concepts
│   ├── qrng-test.py        # QRNG live testen
│   ├── otp-demo.py         # One-Time-Pad mit echten Zufallszahlen
│   └── audio_encrypt.py    # Sprache live verschlüsseln
│
├── data/                   # Rohdaten, Logfiles, Zufallsbitstreams
│   ├── raw/                # Ungefilterte QRNG-Daten
│   ├── filtered/           # Gebiased → unbiassed (nach Debiasing)
│   └── analysis/           # Statistische Tests, Histogramme etc.
│
├── scripts/                # Hilfsskripte für Build, Test, Analyse
│   ├── build_firmware.sh
│   ├── start_server.sh
│   └── analyse_entropy.py
│
├── README.md               # Projektübersicht
├── LICENSE                 # Lizenzinformation
└── .gitignore              # Git-Konfiguration
