# 🧠 W-Seminar Projekt – Maximilian

Willkommen zum W-Seminar-Projekt von **Maximilian**!  
Dieses Repository vereint verschiedene technische und theoretische Komponenten zu einem interdisziplinären Gesamtprojekt – von Backend-Programmierung und Hardwareintegration bis hin zur wissenschaftlichen Dokumentation.

---

## 📁 Projektstruktur

```
.
├── backend/           # Spring Boot Backend-Anwendung (Java)
│   └── src/           # Quellcode & Ressourcen
│       ├── main/      # Hauptanwendung
│       └── test/      # Unit Tests
│
├── client/            # (Platzhalter für Frontend-Komponenten)
│
├── data/              # Rohdaten, Konfigurationen oder Datensätze
│
├── docker/            # Dockerfiles für spezifische Firmware-Komponenten
│   └── firmware.Dockerfile
│
├── docker-compose.yml # Multi-Container Docker Setup
│
├── docs/              # Dokumentation (z. B. wissenschaftliche Ausarbeitung)
│   ├── book/          # Generierte HTML-Version der Ausarbeitung
│   ├── src/           # Markdown-Quellen (Kapitel & Übersicht)
│   ├── pdf/           # Exportiertes PDF der Arbeit
│   └── theme/         # Anpassung des Designs/Themes
│
├── example/           # Beispielcode oder Beispielanwendungen
│
├── hardware/          # Hardwareprojekte
│   ├── qrng/          # Quanten-Random-Number-Generator
│   └── walkie/        # Walkie-Talkie-Projekt
│       ├── firmware/  # Firmware (C++, Assembler, Makefile etc.)
│       └── schematics # Schaltpläne
│
├── scripts/           # Hilfsskripte zur Automatisierung (z. B. Build)
│
├── Makefile           # Top-Level Makefile zum Bauen bestimmter Komponenten
├── LICENSE            # Lizenzinformationen
├── README.md          # Diese Datei
└── wseminar.iml       # Projektdatei für IntelliJ IDEA
```

---

## 🔧 Backend

Der Ordner `backend/` enthält eine vollständige Spring Boot Anwendung zur Verarbeitung von Daten, Kommunikation mit Hardware oder Exposition von REST APIs.

**Wichtige Komponenten:**

- `BackendApplication.java`: Einstiegspunkt der Anwendung
- `application.properties`: Konfigurationsdatei
- `pom.xml`: Maven-Konfiguration für Abhängigkeiten & Build
- `test/`: Unit Tests mit JUnit

**Starten der Anwendung:**

```bash
cd backend
./mvnw spring-boot:run
```

---

## 📄 Dokumentation (`docs/`)

Die wissenschaftliche Dokumentation ist mit [mdBook](https://rust-lang.github.io/mdBook/) erstellt worden. Die HTML-Version findet sich unter `docs/book/`, das PDF unter `docs/book/pdf/output.pdf`.

**Struktur:**

- `docs/src/SUMMARY.md`: Inhaltsverzeichnis der Arbeit
- `docs/src/chapter_1.md`: Beispielkapitel
- `docs/book/`: Generiertes HTML-Buch
- `docs/theme/`: Designanpassungen

**Build der Dokumentation:**

```bash
cd docs
mdbook build
```

---

## 🛠️ Hardware

### 📡 QRNG – Quantum Random Number Generator

- Ort: `hardware/qrng/`
- Bestandteile: `calibrations`, `firmware`, `optics`
- Ziel: Erzeugung echter Zufallszahlen durch physikalische Prozesse

### 📻 Walkie – Walkie-Talkie Firmware

- Ort: `hardware/walkie/`
- Enthält: Firmware in C++ & Assembler, Schaltpläne
- Wichtige Dateien:
  - `kernel.cpp`: Firmware-Logik
  - `loader.s`: Low-Level Loader
  - `linker.ld`: Linker-Skript
  - `Makefile`: Kompilation der Firmware

**Firmware bauen:**

```bash
cd hardware/walkie/firmware
make
```

---

## 🐳 Docker

### docker-compose.yml

Enthält Definitionen für Containerisierung z. B. von Firmware-Testumgebungen oder Entwicklungsservices.

### Dockerfile für Firmware

Pfad: `docker/firmware.Dockerfile`

Verwendung:

```bash
docker build -f docker/firmware.Dockerfile -t firmware-env .
```

---

## 📦 Weitere Ordner

- `client/`: Noch leer – kann zukünftig für ein Web-Frontend genutzt werden
- `data/`: Enthält Daten, CSVs, Messwerte, Konfigurationsdateien etc.
- `example/`: Beispielprojekte oder Demo-Code
- `scripts/`: Hilfs- oder Automatisierungsskripte (z. B. Setup)

---

## 🏗️ Build & Nutzung

| Aufgabe                     | Befehl                                               |
|----------------------------|------------------------------------------------------|
| Backend starten            | `cd backend && ./mvnw spring-boot:run`              |
| Dokumentation bauen        | `cd docs && mdbook build`                           |
| Firmware kompilieren       | `cd hardware/walkie/firmware && make`              |
| Docker Image bauen         | `docker build -f docker/firmware.Dockerfile .`      |

---

## 📜 Lizenz

Dieses Projekt steht unter der **GPL-3.0 license**.  
Details findest du in der [LICENSE](./LICENSE)-Datei.

---

## 📬 Kontakt

Für Rückfragen oder Beiträge:
**Maximilian** [email[at]maximilian.software](mailto:email@maximilian.software)

---

