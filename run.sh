#!/bin/bash
# run.sh - Quick Run Script for AllInOne2.0

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Display banner
echo -e "\033[1;36m"
cat << "EOF"
    _    _     _     ___ _   _  ___  _   _ _____   ____         
   / \  | |   | |   |_ _| \ | |/ _ \| \ | | ____| |___ \   ___  
  / _ \ | |   | |    | ||  \| | | | |  \| |  _|     __) | / _ \ 
 / ___ \| |___| |___ | || |\  | |_| | |\  | |___   / __/ | (_) |
/_/   \_\_____|_____|___|_| \_|\___/|_| \_|_____| |_____(_)___/ 
EOF
echo -e "\033[0m"

# Check if target is provided
if [ $# -eq 0 ]; then
    echo -e "${RED}Usage: $0 <domain>${NC}"
    echo -e "${YELLOW}Example: $0 example.com${NC}"
    echo -e "${YELLOW}Example: $0 google.com${NC}"
    exit 1
fi

# Activate virtual environment
if [ -f "allinone2-env/bin/activate" ]; then
    source allinone2-env/bin/activate
else
    echo -e "${RED}[!] Virtual environment not found!${NC}"
    echo -e "${YELLOW}[*] Run ./install.sh first${NC}"
    exit 1
fi

# Run AllInOne2.0 with provided arguments
echo -e "${GREEN}[*] Starting AllInOne2.0 Scan...${NC}"
python3 allinone2.py "$@"
