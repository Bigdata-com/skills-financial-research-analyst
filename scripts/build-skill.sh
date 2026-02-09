#!/bin/bash
set -e

# Navigate to repo root (parent of scripts/)
cd "$(dirname "$0")/.."

VERSION="${1:?Version is required as first argument}"
OUTPUT_DIR="scripts/output"

# Skills to build: folder name = skill package name
SKILLS=(
  bigdata-financial-research-analyst
  bigdata-macro-analysis
)

mkdir -p "${OUTPUT_DIR}"

for SKILL_NAME in "${SKILLS[@]}"; do
  if [[ ! -d "${SKILL_NAME}" ]]; then
    echo "Skipping ${SKILL_NAME}: folder not found"
    continue
  fi
  OUTPUT_FILE="${OUTPUT_DIR}/${SKILL_NAME}_${VERSION}.skill"
  echo "Building skill package: ${OUTPUT_FILE}"
  zip -r "${OUTPUT_FILE}" "${SKILL_NAME}/"
  echo "Created: ${OUTPUT_FILE}"
done
