#!/bin/bash
set -e

# Navigate to repo root (parent of scripts/)
cd "$(dirname "$0")/.."

VERSION="${1:?Version is required as first argument}"
SKILL_NAME="bigdata-financial-research-analyst"
OUTPUT_FILE="${SKILL_NAME}_${VERSION}.skill"

echo "Building skill package: ${OUTPUT_FILE}"

zip -r "${OUTPUT_FILE}" bigdata-financial-skills/

echo "Created: ${OUTPUT_FILE}"
