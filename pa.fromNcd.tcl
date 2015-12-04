
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name CPE142 -dir "C:/Users/gonzalje/Desktop/CPE142/planAhead_run_1" -part xc7a100tcsg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/gonzalje/Desktop/CPE142/Datapath.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/gonzalje/Desktop/CPE142} }
set_property target_constrs_file "Datapath.ucf" [current_fileset -constrset]
add_files [list {Datapath.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/gonzalje/Desktop/CPE142/Datapath.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/gonzalje/Desktop/CPE142/Datapath.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/gonzalje/Desktop/CPE142/Datapath.twx\": $eInfo"
}
