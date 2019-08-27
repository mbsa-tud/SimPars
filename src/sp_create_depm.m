% ======================================================================
%> @brief Main function. Calls other parsing and DEPM generation functions
%> @param model_name Name of the Simulink model
%> @param depm_file_name Name of the Simulink model
%> @retval reutrns nothing
% ======================================================================
function sp_create_depm(model_name, depm_file_name)
    start_time = datetime('now');
    
    disp('==== Control flow analysis ===')
    [] = sp_analyze_control_flow(model_name);
    disp('=============================')
    
    disp('==== Data flow analysis =====')
    %[] = analyze_data_flow(model_name);
    disp('=============================')
    
    disp('==== DEPM generation ========')
    %[] = generate_depm(depm_file_name);
    disp(depm_file_name);
    disp('=============================')
    
    stop_time = datetime('now');
    disp(['Total time: ' char(stop_time - start_time)]);
end