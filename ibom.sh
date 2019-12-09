#!/bin/sh
set -x
/usr/bin/xvfb-run --server-args="-screen 0 1024x768x24" /usr/bin/python3 /usr/src/InteractiveHtmlBom/generate_interactive_bom.py --no-browser --include-tracks --include-nets --checkboxes Placed --dark-mode --layer-view F --highlight-pin1 --dest-dir /output /pcb/$KICAD_PROJECT.kicad_pcb
