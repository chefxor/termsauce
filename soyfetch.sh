#!/bin/bash
# Author - Chef
# Github - https://github.com/chefxor

# Define colors
BLUE='\e[1;34m'
CYAN='\e[1;36m'
BOLD='\e[1m'
RESET='\e[0m'

# Get system information
USER=$(whoami)
HOSTNAME=$(cat /proc/sys/kernel/hostname)
OS=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '"' -f2)
KERNEL=$(uname -r)
UPTIME=$(uptime -p | sed 's/up //')
SHELL=$(basename "${SHELL}")
PACKAGES=$(pacman -Q | wc -l)
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEMORY=$(free -h | awk '/^Mem:/ {print $3"/"$2}')

# Store system info in another variable with interpreted color codes
sysinfo=$(printf "%b\n" "
${BOLD}${BLUE}${USER}${RESET}${BOLD}@${CYAN}${HOSTNAME}${RESET}
${BOLD}${CYAN}OS:${RESET} ${OS}
${BOLD}${CYAN}Kernel:${RESET} ${KERNEL}
${BOLD}${CYAN}Uptime:${RESET} ${UPTIME}
${BOLD}${CYAN}Shell:${RESET} ${SHELL}
${BOLD}${CYAN}Packages:${RESET} ${PACKAGES} (pacman)
${BOLD}${CYAN}CPU Usage:${RESET} ${CPU_USAGE}%
${BOLD}${CYAN}Memory:${RESET} ${MEMORY}
")


# Print the output
paste <(echo "$sysinfo") | while IFS=$'\t' read -r col1 col2; do
  printf "%-35s  %s\n" "$col1" "$col2"
done

exit 0


