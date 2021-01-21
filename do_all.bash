#! /bin/bash

mkdir Resultados

for n in {10..3}; do
  if [ -e stop_request ]; then
    exit 0
  fi
  f=$(printf "Results/%04d" $n)
  export TIMEFORMAT="$n done in %3Us"
  if [ ! -e $f ]; then
    time ./A03 -x $n >$f
  fi
done
echo All done
