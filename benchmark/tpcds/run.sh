#!/bin/bash

if [ -z $BENCH_HOME ]; then
    echo "BENCH_HOME not found in environment."
    exit 1
fi

${BENCH_HOME}/tpcds/clear_caches.sh

echo "Start to run TPC-DS query. Keep this ssh seesion alive. Open another ssh session and check the .nohup in ${BENCH_HOME}/tpcds for progress. This step would take around 9 minutes on POWER8 and more time on x86..."

${BENCH_HOME}/tpcds/run_single_tpcds_v1.4.sh q68 64 16 30g 200 8