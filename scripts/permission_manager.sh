
#!/bin/bash

set -Eeuo pipefail

PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
TEST_DIR="$PROJECT_DIR/test-data"

echo "======================================"
echo " LINUX USER & PERMISSION MANAGEMENT"
echo "======================================"

echo
echo "--- CURRENT USER ---"
whoami
id

echo
echo "--- CURRENT GROUPS ---"
groups

echo
echo "--- FILE OWNERSHIP AND PERMISSIONS ---"
ls -l "$TEST_DIR"

echo
echo "--- APPLYING SAFE SAMPLE PERMISSIONS ---"

chmod 644 "$TEST_DIR/public.txt"
chmod 600 "$TEST_DIR/secret.txt"

echo "Updated public.txt to 644"
echo "Updated secret.txt to 600"

echo
echo "--- VERIFYING PERMISSIONS ---"
stat -c '%A (%a) %U:%G %n' "$TEST_DIR/public.txt"
stat -c '%A (%a) %U:%G %n' "$TEST_DIR/secret.txt"

echo
echo "Permission management check completed."
