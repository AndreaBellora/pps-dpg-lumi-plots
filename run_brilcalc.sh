#!/bin/bash

source /cvmfs/cms-bril.cern.ch/cms-lumi-pog/brilws-docker/brilws-env

set -x

# normtag=/cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_BRIL.json # preliminary normtag for Run3, use the approved one for physics!
normtag=/cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json # definitive normtag, not available for all years at the moment

json=/eos/user/c/cmsdqm/www/CAF/certification/Collisions22/Cert_Collisions2022_355100_362760_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/cms_2022.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2022/PPS-Pixel-2022.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2022.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2022/PPS-Pixel-Diam-2022.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2022.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2022/PPS-Pixel-2022_AND_CMSGolden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2022_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2022/PPS-Pixel-Diam-2022_AND_CMSGolden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2022_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

min_run='355207'
max_run='362760'
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/CMS_noFilter_2022.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv --begin $min_run --end $max_run -o $csv_output 


# 2023

json=/eos/user/c/cmsdqm/www/CAF/certification/Collisions23/Cert_Collisions2023_366442_370790_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/cms_2023.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2023/PPS-July2023_track_only.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2023.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2023/PPS-July2023_track+time.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2023.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2023/PPS-July2023_track_only_AND_CMS_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2023_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2023/PPS-July2023_track+time_AND_CMS_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2023_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

min_run='366403'
max_run='370790'
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/CMS_noFilter_2023.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv --begin $min_run --end $max_run -o $csv_output 


# Change normtag for last 3 years - final normtag missing
normtag=/cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_BRIL.json

# 2024

json=/eos/user/c/cmsdqm/www/CAF/certification/Collisions24/Cert_Collisions2024_378981_386951_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/cms_2024.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2024/PPS_pixel_2024.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2024.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2024/PPS_pixel_diamond_2024.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2024.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2024/PPS_Pixel_and_CMS_certif_2024.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2024_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2024/PPS_Pixel_Diamond_and_CMS_certif_calib_2024.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+time_2024_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

min_run='378981'
max_run='386951'
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/CMS_noFilter_2024.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv --begin $min_run --end $max_run -o $csv_output 


# 2025

json=/eos/user/c/cmsdqm/www/CAF/certification/Collisions25/Cert_Collisions2025_391658_398860_Golden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/cms_2025.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_Pixel_only_2025.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2025.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_2025_pixelAND_diamondAND.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeAND_2025.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_2025_pixelAND_diamondOR.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeOR_2025.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_Pixel_only_2025_CMSgolden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2025_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_2025_pixelAND_diamondAND_CMSgolden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeAND_2025_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2025/PPS_certified_2025_pixelAND_diamondOR_CMSgolden.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeOR_2025_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

min_run='391658'
max_run='398860'
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/CMS_noFilter_2025.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv --begin $min_run --end $max_run -o $csv_output 


# 2026

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/CMS_Golden_2026fullYear_ppNomE_altogether_forPlotsOnly_temporary.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/cms_2026.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIXonly.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2026.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIX_DiamondAND.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeAND_2026.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIX_DiamondOR.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeOR_2026.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv -i $json -o $csv_output 

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIXonly_AND_CMSGolden_2026fullYear_temporary.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track_only_2026_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIX_DiamondAND_AND_CMSGolden_2026fullYear_temporary.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeAND_2026_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

json=/eos/project-c/ctpps/Operations/DataExternalConditions/2026/PPS_2026_PIX_DiamondOR_AND_CMSGolden_2026fullYear_temporary.json
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/pps_track+timeOR_2026_AND_CMS.csv
brilcalc lumi --normtag $normtag -u /fb --byls --output-style csv -i $json -o $csv_output

min_run='401623'
max_run='403937'
csv_output=/eos/home-${USER::1}/${USER}/SWAN_projects/pps-dpg-lumi-plots/CMS_noFilter_2026.csv
brilcalc lumi -b "STABLE BEAMS" --datatag online -u /fb --byls --output-style csv --begin $min_run --end $max_run -o $csv_output 

set +x



# JSON issues found in 
# 2022
# 2024
# 2026
# It's always just a few LSs here and there, but it's there