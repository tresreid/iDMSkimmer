#!/bin/bash

dir=/uscms/home/mreid/nobackup/CRAB/signal_region_analysis/CMSSW_10_2_18/src/iDMSkimmer/washAOD
for d in $(find ${dir}/macros/plots/ -type d)
do
  #Do something, the directory is accessible with $d:
  echo $d
  python $dir/scripts/make_html_listing.py $d
done
#cp -r $dir/macros/plots/* /publicweb/m/mreid/iDM_AN_Plots/moresamples/

webdir=/publicweb/m/mreid/iDM_AN_Plots/an_plots/trig_mubins/
#webdir=/publicweb/m/mreid/iDM_AN_Plots/an_plots/trig/
#webdir=/publicweb/m/mreid/iDM_AN_Plots/an_plots/final_trigs_erf/
#webdir=/publicweb/m/mreid/iDM_AN_Plots/an_plots/final_trigs_tanh/
#webdir=/publicweb/m/mreid/iDM_AN_Plots/an_plots/signal_trig/

mkdir -p ${webdir} 
rm -r ${webdir}*
cp -r ${dir}/macros/plots/* ${webdir}

