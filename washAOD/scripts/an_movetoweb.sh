#!/bin/bash

dir=/uscms/home/mreid/nobackup/CRAB/signal_region_analysis/CMSSW_10_2_18/src/iDMSkimmer/washAOD
for d in $(find ${dir}/macros/plots/ -type d)
do
  #Do something, the directory is accessible with $d:
  echo $d
  python $dir/scripts/make_html_listing.py $d
done

rm -r /publicweb/m/mreid/iDM_AN_Plots/an_plots/sigtest/*
cp -r $dir/macros/plots/* /publicweb/m/mreid/iDM_AN_Plots/an_plots/sigtest/

