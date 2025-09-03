#!/bin/bash

# CriticalSight Project Structure Setup Script
# Creates complete folder structure and files for the ML + GenAI incident management system

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Project name
PROJECT_NAME="criticalsight"

echo -e "${BLUE}🚀 Creating CriticalSight Project Structure...${NC}\n"

# Check if project directory already exists
if [ -d "$PROJECT_NAME" ]; then
    echo -e "${YELLOW}⚠️  Directory $PROJECT_NAME already exists. Remove it first? (y/n)${NC}"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        rm -rf "$PROJECT_NAME"
        echo -e "${GREEN}✅ Removed existing directory${NC}"
    else
        echo -e "${RED}❌ Aborted${NC}"
        exit 1
    fi
fi

# Create main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

echo -e "${CYAN}📁 Creating folder structure...${NC}"

# Create main folder structure
mkdir -p criticalsight/{config,core,database,ml,genai,services,api,cli,utils,integrations,scheduler}
mkdir -p criticalsight/database/{migrations,repositories}
mkdir -p criticalsight/ml/classifiers
mkdir -p criticalsight/genai/{providers,analyzers,prompts}
mkdir -p criticalsight/api/{routes,middleware,schemas}
mkdir -p criticalsight/cli/commands
mkdir -p criticalsight/integrations/{servicenow,jira,slack}
mkdir -p tests/{unit,integration,e2e}
mkdir -p docs
mkdir -p scripts
mkdir -p monitoring/{grafana/{dashboards,datasources},prometheus}
mkdir -p data
mkdir -p logs
mkdir -p models
mkdir -p ssl

echo -e "${GREEN}✅ Folder structure created${NC}\n"
