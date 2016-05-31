set -o nounset
otf_file=$1

$GRAPPA_HOME/build/Make+Release+Tracing/applications/util/otf2sqlite.exe --otf=$otf_file --list_counters=true 2>&1 | grep Found | awk '{print $6,$8}'
