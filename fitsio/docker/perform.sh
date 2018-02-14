#!/bin/sh

set -eu

analyse_log() {
    grep -q cfitsio /tmp/logfile
}

main() {
    cargo test --verbose -- --test-threads 1 2>&1 | tee /tmp/logfile
    analyse_log

    cargo test --verbose --features bindgen --no-default-features -- --test-threads 1 2>&1 | tee /tmp/logfile
    analyse_log
}

main
