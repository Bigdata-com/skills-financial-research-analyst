#!/bin/bash
set -e

VERSION="${1:?Version is required as first argument}"
SKILL_NAME="bigdata-financial-research-analyst"
OUTPUT_FILE="${SKILL_NAME}_${VERSION}.skill"

echo "Building skill package: ${OUTPUT_FILE}"

cd skills
zip -r "../${OUTPUT_FILE}" Bigdata_Financial_Skills/

echo "Created: ${OUTPUT_FILE}"
