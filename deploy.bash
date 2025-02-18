#! /bin/bash
set -o errexit -o pipefail -o nounset
cd "$(dirname "$0")"
pretty-exec -- rm -rf output
pretty-exec -- pnpm deploy --filter=foo ./output
pretty-exec -- lsd -lA packages/foo
pretty-exec -- lsd -lA output
