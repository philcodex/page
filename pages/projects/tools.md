---
layout: default
title: Tools
permalink: projects/tools
---


# Open Source Tools

There are numerous open-source tools available for troubleshooting operating systems across various aspects like running processes, open ports, network connections, hardware usage (CPU, memory, disk, network), and logs. Below is a categorized list of popular open-source tools that can help with these tasks, primarily focusing on Linux/Unix systems, but some are cross-platform and work on Windows or macOS as well.

### 1. Running Processes
- `top`: Real-time system-monitoring tool for Unix systems, displays CPU and memory usage by processes.  
  - Alternative: `htop` (enhanced, user-friendly version with a colorful interface and process management features).
- `ps`: Displays a snapshot of current processes, highly customizable for filtering and formatting output.
- `pidstat` (part of sysstat): Monitors individual process statistics like CPU, memory, and I/O usage over time.
- `Glances`: Cross-platform system-monitoring tool that provides a comprehensive view of processes, CPU, memory, and more in a single interface.

### 2. Open Ports
- `netstat` (part of net-tools): Displays open ports, active connections, and routing tables (though somewhat deprecated in favor of newer tools).
- `ss`: Modern replacement for netstat, faster and provides detailed socket statistics, including open ports and listening services.
- `nmap`: Network exploration tool and port scanner, useful for discovering open ports and services on local or remote systems.
- `lsof`: Lists open files, including network sockets, to identify which processes are using specific ports.

### 3. Open Network Connections
- `netstat` and `ss`: As mentioned, both show active network connections, including TCP/UDP states and associated processes.
- `iftop`: Displays real-time network bandwidth usage by connection, showing active network connections and their data rates.
- `nload`: Monitors network traffic and bandwidth usage, useful for identifying high-traffic connections.
- `Wireshark`: Open-source packet analyzer for detailed inspection of network connections and traffic (cross-platform).
- `tcpdump`: Command-line packet analyzer for capturing and analyzing network traffic, useful for troubleshooting connection issues.

### 4. Hardware Usage (CPU, Memory, Disk, Network)

**CPU Usage:**
- `top` / `htop`: Real-time CPU usage per process and system-wide.
- `mpstat` (sysstat): Detailed CPU usage statistics, including per-core metrics.
- `vmstat`: Reports virtual memory and CPU usage statistics.

**Memory Usage:**
- `free`: Displays memory usage (total, used, free, and cached).
- `vmstat`: Provides memory statistics alongside CPU.
- `htop` / `Glances`: Visualizes memory usage by processes.

**Disk Usage:**
- `df`: Reports disk space usage for mounted filesystems.
- `du`: Estimates file and directory space usage.
- `iotop`: Monitors disk I/O usage by processes in real-time.
- `iostat` (sysstat): Provides disk I/O and CPU statistics.

**Network Usage:**
- `iftop` / `nload`: Real-time network bandwidth monitoring.
- `vnstat`: Lightweight network traffic monitor with historical data tracking.
- `bmon`: Bandwidth monitor for network interfaces.

### 5. Logs
- `journalctl` (systemd): Queries and displays logs from the systemd journal, widely used in modern Linux distributions.
- `tail`: Monitors log files in real-time (e.g., `tail -f /var/log/syslog`).
- `less` / `more`: Paginates and searches through large log files.
- `grep`: Filters log files for specific patterns or errors (e.g., `grep "error" /var/log/messages`).
- `logrotate`: Manages and rotates log files to prevent disk space issues.
- `rsyslog` / `syslog-ng`: Centralised log management systems.
- `ELK Stack` (Elasticsearch, Logstash, Kibana): Open-source suite for centralised log aggregation and analysis.

### 6. Comprehensive Monitoring Tools
- `Nagios Core`: Open-source monitoring system for tracking system resources, network services, and logs.
- `Zabbix`: Enterprise-grade monitoring tool for hardware, network, and application performance.
- `Prometheus`: Time-series monitoring tool, often paired with `Grafana` for visualization.
- `Cockpit`: Web-based interface for Linux server management.

### 7. Cross-Platform Tools
- `Wireshark`: Packet analysis for network troubleshooting.
- `Glances`: System monitoring with a web interface.
- `Sysdig`: System-level monitoring and troubleshooting.
- `Process Explorer`: Detailed process and resource usage for Windows systems.

### Installation Notes
- Most tools are available via package managers (e.g., `apt install htop` on Debian/Ubuntu).
- Cross-platform tools can be installed via Homebrew or official installers.
- Some tools like ELK, Nagios, or Zabbix require more setup.

### Recommendations
- For quick troubleshooting: use `htop`, `ss`, `iotop`, and `journalctl`.
- For network issues: combine `nmap`, `Wireshark`, and `tcpdump`.
- For monitoring: use `Prometheus` + `Grafana` or `Zabbix`.
- For logs: start with `journalctl` or `grep`, then scale to `ELK Stack`.