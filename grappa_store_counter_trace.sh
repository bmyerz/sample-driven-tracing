set -o nounset
set -o errexit

tracename=$1
counter=$2

$GRAPPA_HOME/build/Make+Release+Tracing/applications/util/otf2sqlite.exe --db=$1.db --otf=$tracename/$tracename.otf --table=$counter --counter=$counter
