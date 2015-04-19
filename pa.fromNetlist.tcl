
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name main_fpga -dir "D:/github/MainBoardCode_v6/planAhead_run_3" -part xc3s400tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/github/MainBoardCode_v6/m.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/github/MainBoardCode_v6} }
set_property target_constrs_file "initialize.ucf" [current_fileset -constrset]
add_files [list {initialize.ucf}] -fileset [get_property constrset [current_run]]
link_design
