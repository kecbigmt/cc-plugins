#!/bin/bash
set -e

# Token checker for skills and commands
# Skills should be concise per Anthropic best practices

echo "Checking token limits for skills and commands..."
echo "Target: ≤500 tokens, Maximum: ≤1000 tokens (fails)"
echo ""

FAIL=0

# Check if uv is available
if ! command -v uv &> /dev/null; then
    echo "❌ uv is required but not installed."
    echo "Install it with: curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi

# Create Python script for token counting
cat > /tmp/count_tokens.py << 'PYTHON_SCRIPT'
import sys
import tiktoken

def count_tokens(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        enc = tiktoken.get_encoding("cl100k_base")
        tokens = enc.encode(content)
        return len(tokens)
    except Exception as e:
        print(f"Error counting tokens: {e}", file=sys.stderr)
        return -1

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: count_tokens.py <file>", file=sys.stderr)
        sys.exit(1)
    count = count_tokens(sys.argv[1])
    if count >= 0:
        print(count)
    else:
        sys.exit(1)
PYTHON_SCRIPT

# Find all skill and command markdown files
FILES=$(find skills commands -name "*.md" 2>/dev/null | sort)

if [ -z "$FILES" ]; then
  echo "⚠️  No files found to check"
  rm -f /tmp/count_tokens.py
  exit 0
fi

while IFS= read -r file; do
  [ -z "$file" ] && continue

  if [ -f "$file" ]; then
    tokens=$(uv run --with tiktoken python /tmp/count_tokens.py "$file")

    status="✅"

    if [ $tokens -gt 1000 ]; then
      status="❌"
      FAIL=1
    elif [ $tokens -gt 500 ]; then
      status="⚠️ "
    fi

    printf "%s %-50s %4d tokens\n" "$status" "$file" "$tokens"
  fi
done <<< "$FILES"

# Cleanup
rm -f /tmp/count_tokens.py

echo ""
if [ $FAIL -eq 1 ]; then
  echo "❌ Token check FAILED"
  echo "Files exceeding 1000 tokens should be split or trimmed."
  exit 1
else
  echo "✅ Token check PASSED"
fi
