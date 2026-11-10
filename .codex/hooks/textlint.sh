#!/usr/bin/env bash
# Stop hook: run textlint on the Markdown documents and block the stop if it reports problems.
set -u

input="$(cat)"

# Avoid an endless loop when Claude was already continued by this hook once.
if [ "$(printf '%s' "$input" | jq -r '.stop_hook_active // false')" = "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" || exit 0

if [ ! -x node_modules/.bin/textlint ]; then
  echo "textlint is not installed. Run \`npm ci\`, then \`npm run lint:text\`." >&2
  exit 2
fi

if ! output="$(npm run --silent lint:text 2>&1)"; then
  printf 'textlint found wording problems in the documents. Fix them (or run `npm run lint:text:fix`) before finishing.\n%s\n' "$output" >&2
  exit 2
fi

exit 0
