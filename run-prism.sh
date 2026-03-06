#!/bin/bash
# Run PRISM model checker using Docker container
# Usage: ./run-prism.sh <model.pm> <properties.pctl>
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
docker run --rm -v "$SCRIPT_DIR:/workspace" -w /workspace prism-model-checker java -Djava.library.path=/tmp/prism-4.10-linux64-arm/lib -cp "/tmp/prism-4.10-linux64-arm/lib/prism.jar:/tmp/prism-4.10-linux64-arm/lib/*" prism.PrismCL -ex "$@"
