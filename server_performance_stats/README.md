**🩺 System Statistics Report Script**

**Project URL**: https://roadmap.sh/projects/server-stats

A lightweight Bash script to quickly gather key system statistics on a Linux host. Useful for sysadmins, DevOps engineers, or security audits.

**🔍 What It Checks**

- OS version and name
- Total CPU usage
- Memory usage (used vs. free)
- Disk usage
- Top 5 processes by CPU and memory
- System uptime
- Load averages (1, 5, 15 min)
- Users with home directories
- Failed login attempts

**🚀 Usage**

chmod +x scripts/health_check.sh

./scripts/health_check.sh

**📦 Sample Output**

OS version & name:

NAME="Ubuntu"

VERSION="22.04.4 LTS (Jammy Jellyfish)"

Total CPU usage: 12.34%
...
