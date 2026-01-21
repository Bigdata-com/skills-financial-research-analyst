#!/bin/bash
set -e

# Navigate to repo root (parent of scripts/)
cd "$(dirname "$0")/.."

VERSION="${1:?Version is required as first argument}"
SKILL_NAME="bigdata-financial-research-analyst"
OUTPUT_DIR="scripts/output"
OUTPUT_FILE="${OUTPUT_DIR}/${SKILL_NAME}_${VERSION}.skill"

# Ensure output directory exists
mkdir -p "${OUTPUT_DIR}"

echo "Building skill package: ${OUTPUT_FILE}"

zip -r "${OUTPUT_FILE}" bigdata-financial-research-analyst/

echo "Created: ${OUTPUT_FILE}"
