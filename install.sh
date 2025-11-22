#!/bin/bash
# install.sh - Auto Install Script for AllInOne2.0

echo -e "\033[1;36m"
cat << "EOF"
    _    _     _     ___ _   _  ___  _   _ _____   ____         
   / \  | |   | |   |_ _| \ | |/ _ \| \ | | ____| |___ \   ___  
  / _ \ | |   | |    | ||  \| | | | |  \| |  _|     __) | / _ \ 
 / ___ \| |___| |___ | || |\  | |_| | |\  | |___   / __/ | (_) |
/_/   \_\_____|_____|___|_| \_|\___/|_| \_|_____| |_____(_)___/ 
EOF
echo -e "\033[0m"
echo -e "\033[1;32m                      AllInOne2.0 - Subdomain Reconnaissance Tool\033[0m"
echo -e "\033[1;33m                         GitHub.com/YourUsername/AllInOne2.0\033[0m"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${YELLOW}[*] Checking system dependencies...${NC}"

# Check Python
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}[!] Python3 not found! Installing...${NC}"
    sudo apt update && sudo apt install -y python3 python3-pip
fi

# Check pip
if ! command -v pip3 &> /dev/null; then
    echo -e "${RED}[!] pip3 not found! Installing...${NC}"
    sudo apt install -y python3-pip
fi

# Create virtual environment
echo -e "${YELLOW}[*] Setting up virtual environment...${NC}"
python3 -m venv allinone2-env

# Activate virtual environment
source allinone2-env/bin/activate

# Install requirements
echo -e "${YELLOW}[*] Installing Python dependencies...${NC}"
pip3 install -r requirements.txt

# Make scripts executable
chmod +x allinone2.py run.sh install.sh

echo -e "${GREEN}"
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                   INSTALLATION COMPLETE!                    ║"
echo "╠══════════════════════════════════════════════════════════════╣"
echo "║                                                              ║"
echo "║  USAGE:                                                      ║"
echo "║    ./run.sh example.com                                      ║"
echo "║    python3 allinone2.py --target example.com run            ║"
echo "║                                                              ║"
echo "║  QUICK START:                                                ║"
echo "║    source allinone2-env/bin/activate                        ║"
echo "║    python3 allinone2.py --target example.com run            ║"
echo "║                                                              ║"
echo "║  FEATURES:                                                   ║"
echo "║    ✓ AI-Powered Subdomain Discovery                         ║"
echo "║    ✓ Hidden Subdomain Detection                             ║"
echo "║    ✓ Smart Relevance Filtering                              ║"
echo "║    ✓ Advanced DNS Investigation                             ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo -e "${NC}"
