# SSH Hardening: Real-World Cybersecurity Lab 🔐

This project simulates a real-world SSH server attack and defense scenario using Kali Linux (attacker), Ubuntu Server (target), and Parrot OS (trusted client).

## 🎯 Objective

- Simulate SSH brute-force attack from Kali using Hydra
- Harden Ubuntu server using SSH key-only auth, custom port, UFW firewall, and Fail2Ban
- Visualize attack prevention in real time

## 🧩 Lab Setup

| Role        | VM OS        | IP               |
|-------------|--------------|------------------|
| Target      | Ubuntu       | 192.168.56.115   |
| Attacker    | Kali Linux   | 192.168.56.103   |
| Trusted     | Parrot OS    | 192.168.56.102   |

## 🛠️ Features Implemented

- SSH key-only login (no password auth)
- Custom SSH port (2424)
- UFW firewall to allow only trusted client
- Brute-force attack simulation using Hydra
- Final lock-down tested with Nmap & Hydra

## 📜 Script

[`harden.sh`](./harden.sh) automates the full server-side hardening.

## 🎥 Video Demo

Watch on YouTube: [🔗 SSH Hardening Lab Video](https://www.youtube.com/watch?v=jRxmoAZL-hU&t=160s)

## 🖼️ Thumbnail

![thumbnail](./thumbnail.png)

## 📂 Files Included

- `harden.sh`: Hardening script
- `thumbnail.png`: Thumbnail used for YouTube
- `README.md`: This documentation

---

## 📚 Learnings

✅ Practical understanding of SSH security  
✅ How brute-force attacks happen  
✅ Real defense using Linux tools  
✅ Team-based lab with attacker/client separation

---
