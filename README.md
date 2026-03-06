# network_restore

Kleines Windows-Tool (VBScript), das gängige Netzwerk-Resets mit Admin-Rechten ausführt: TCP/IP-Stack zurücksetzen sowie IP-Lease erneuern und DNS-Cache leeren.

Das Script startet dazu eine erhöhte Eingabeaufforderung (UAC-Prompt) und führt folgende Befehle aus: `netsh int ip reset`, `ipconfig /release`, `ipconfig /renew`, `ipconfig /flushdns`. [web:34][web:40]

---

## Features

- Startet automatisch **als Administrator** (UAC) via `ShellExecute ... "runas"`. [web:39]
- Setzt TCP/IP zurück (netsh). [web:34]
- DHCP-Lease erneuern (`release`/`renew`). [web:42]
- DNS-Resolver-Cache leeren (`flushdns`). [web:40]

---

## Voraussetzungen

- Windows 10/11 (sollte auch auf älteren Versionen funktionieren, solange `netsh`/`ipconfig` verfügbar sind). [web:34][web:40]
- Administratorrechte (für `netsh int ip reset` erforderlich). [web:34]

---

## Installation

git clone https://github.com/Kodiman1402/network_restore.git
cd network_restore
Variante B: Download als ZIP
GitHub → Code → Download ZIP, entpacken, Script ausführen.

Nutzung
Doppelklick auf network_restore.vbs (oder wie deine Datei heißt).

UAC-Abfrage bestätigen.

Es öffnet sich eine CMD mit den Reset-Befehlen; nach Abschluss ggf. PC neu starten (wird nach netsh int ip reset oft empfohlen). [web:34]

Telegram: https://t.me/Kodiman

YouTube: https://www.youtube.com/@Kodiman_Himself

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P4FRK7U)

