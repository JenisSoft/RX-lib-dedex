unit DeDeRes;




































































































































































































































































































































  /////////////////////////////////////////////////////
  msg_reset_adj_sett : String = 'Reset adjusted settings ?';
  msg_finalclassdmp : String = 'Finalizing dump ...';
  msg_loaddoi : String = 'Loading %s ...';
  msg_dumpingclasses : String = 'Prepare to dump classes ...';
  wrn_d2_app : String = 'This appears to be D2 application.'#13#10+



  msg_sym_sice_info  : String =  '  SoftIce is not active or is hidden. If DeDe detects that '#13+
                      'SoftIce is active it can compile the .map file to .sym and '#13+
                      '.nsm and load it in sice. Then you will be able to see all '#13+
                      'exported DeDe references while tracing ;-)';













































































    mm_file_process:=FormatIt(daini.ReadString('LANGRES','mm_file_process',mm_file_process));
    mm_file_open_project:=FormatIt(daini.ReadString('LANGRES','mm_file_open_project',mm_file_open_project));
    mm_file_save_project:=FormatIt(daini.ReadString('LANGRES','mm_file_save_project',mm_file_save_project));
    mm_file_save_project_as:=FormatIt(daini.ReadString('LANGRES','mm_file_save_project_as',mm_file_save_project_as));
    mm_file_loadsym:=FormatIt(daini.ReadString('LANGRES','mm_file_loadsym',mm_file_loadsym));
    mm_file_exit:=FormatIt(daini.ReadString('LANGRES','mm_file_exit',mm_file_exit));
    mm_dumpers:=FormatIt(daini.ReadString('LANGRES','mm_dumpers',mm_dumpers));
    mm_dumpers_bpl:=FormatIt(daini.ReadString('LANGRES','mm_dumpers_bpl',mm_dumpers_bpl));
    mm_dumpers_dcu:=FormatIt(daini.ReadString('LANGRES','mm_dumpers_dcu',mm_dumpers_dcu));
    mm_tools:=FormatIt(daini.ReadString('LANGRES','mm_tools',mm_tools));
    mm_tools_peedit:=FormatIt(daini.ReadString('LANGRES','mm_tools_peedit',mm_tools_peedit));
    mm_tools_peheadcon:=FormatIt(daini.ReadString('LANGRES','mm_tools_peheadcon',mm_tools_peheadcon));
    mm_tools_dump_active:=FormatIt(daini.ReadString('LANGRES','mm_tools_dump_active',mm_tools_dump_active));
    mm_tools_doibuild:=FormatIt(daini.ReadString('LANGRES','mm_tools_doibuild',mm_tools_doibuild));
    mm_tools_rvaconv:=FormatIt(daini.ReadString('LANGRES','mm_tools_rvaconv',mm_tools_rvaconv));
    mm_tools_opcodeasm:=FormatIt(daini.ReadString('LANGRES','mm_tools_opcodeasm',mm_tools_opcodeasm));
    mm_options:=FormatIt(daini.ReadString('LANGRES','mm_options',mm_options));
    mm_options_symbols:=FormatIt(daini.ReadString('LANGRES','mm_options_symbols',mm_options_symbols));
    mm_options_config:=FormatIt(daini.ReadString('LANGRES','mm_options_config',mm_options_config));
    mm_about:=FormatIt(daini.ReadString('LANGRES','mm_about',mm_about));

    {POPUP MENU ITEMS}
    pm_svrvspu_1:=FormatIt(daini.ReadString('LANGRES','pm_svrvspu_1',pm_svrvspu_1));
    pm_rvapu_copy_rva:=FormatIt(daini.ReadString('LANGRES','pm_rvapu_copy_rva',pm_rvapu_copy_rva));
    pm_rvapu_showadddata:=FormatIt(daini.ReadString('LANGRES','pm_rvapu_showadddata',pm_rvapu_showadddata));
    pm_rvapu_disassemble:=FormatIt(daini.ReadString('LANGRES','pm_rvapu_disassemble',pm_rvapu_disassemble));
    pm_DFMListPopUp_0:=FormatIt(daini.ReadString('LANGRES','pm_DFMListPopUp_0',pm_DFMListPopUp_0));
    pm_DFMListPopUp_2:=FormatIt(daini.ReadString('LANGRES','pm_DFMListPopUp_2',pm_DFMListPopUp_2));
    pm_DFMListPopUp_3:=FormatIt(daini.ReadString('LANGRES','pm_DFMListPopUp_3',pm_DFMListPopUp_3));
    pm_DFMListPopUp_4:=FormatIt(daini.ReadString('LANGRES','pm_DFMListPopUp_4',pm_DFMListPopUp_4));

    {TAB CONTROLS}
    tab_mpc_uts:=FormatIt(daini.ReadString('LANGRES','tab_mpc_uts',tab_mpc_uts));
    tab_mps_fmts:=FormatIt(daini.ReadString('LANGRES','tab_mps_fmts',tab_mps_fmts));
    tab_mps_dts:=FormatIt(daini.ReadString('LANGRES','tab_mps_dts',tab_mps_dts));
    tab_mps_fts:=FormatIt(daini.ReadString('LANGRES','tab_mps_fts',tab_mps_fts));
    tab_mps_xp:=FormatIt(daini.ReadString('LANGRES','tab_mps_xp',tab_mps_xp));
    tab_2_ev:=FormatIt(daini.ReadString('LANGRES','tab_2_ev',tab_2_ev));
    tab_2_ctrl:=FormatIt(daini.ReadString('LANGRES','tab_2_ctrl',tab_2_ctrl));

    {LISTVIEW CONTROLS}
    lv_ClassesLV_col0:=FormatIt(daini.ReadString('LANGRES','lv_ClassesLV_col0',lv_ClassesLV_col0));
    lv_ClassesLV_col1:=FormatIt(daini.ReadString('LANGRES','lv_ClassesLV_col1',lv_ClassesLV_col1));
    lv_ClassesLV_col2:=FormatIt(daini.ReadString('LANGRES','lv_ClassesLV_col2',lv_ClassesLV_col2));
    lv_ClassesLV_col3:=FormatIt(daini.ReadString('LANGRES','lv_ClassesLV_col3',lv_ClassesLV_col3));
    lv_DFMList_col0:=FormatIt(daini.ReadString('LANGRES','lv_DFMList_col0',lv_DFMList_col0));
    lv_DFMList_col1:=FormatIt(daini.ReadString('LANGRES','lv_DFMList_col1',lv_DFMList_col1));
    lv_DCULV_col0:=FormatIt(daini.ReadString('LANGRES','lv_DCULV_col0',lv_DCULV_col0));
    lv_DCULV_col1:=FormatIt(daini.ReadString('LANGRES','lv_DCULV_col1',lv_DCULV_col1));
    lv_EventLV_col0:=FormatIt(daini.ReadString('LANGRES','lv_EventLV_col0',''));
    lv_EventLV_col1:=FormatIt(daini.ReadString('LANGRES','lv_EventLV_col1',''));
    lv_EventLV_col2:=FormatIt(daini.ReadString('LANGRES','lv_EventLV_col2',''));
    lv_ControlsLV_col0:=FormatIt(daini.ReadString('LANGRES','lv_ControlsLV_col0',''));
    lv_ControlsLV_col1:=FormatIt(daini.ReadString('LANGRES','lv_ControlsLV_col1',''));

    {LABELS}
    lbl_MainForm_Label2:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Label2',''));
    lbl_MainForm_cbDFM:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_cbDFM',''));
    lbl_MainForm_cbPAS:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_cbPAS',''));
    lbl_MainForm_cbDPR:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_cbDPR',''));
    lbl_MainForm_cbTXT:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_cbTXT',''));
    lbl_MainForm_Label1:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Label1',''));
    lbl_MainForm_PrcsBtn:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_PrcsBtn',''));
    lbl_MainForm_ctrBtn:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_ctrBtn',''));
    //sandy
    lbl_MainForm_btnOpenDir:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_BtnOpenDir',''));


    lbl_MainForm_Label3:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Label3',''));
    lbl_MainForm_REF:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_REF',''));
    lbl_MainForm_IDAMAP:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_IDAMAP',''));
    lbl_MainForm_AllStrCB:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_AllStrCB',''));
    lbl_MainForm_AllCallsCB:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_AllCallsCB',''));
    lbl_MainForm_CustomCB:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_CustomCB',''));
    lbl_MainForm_RVACB:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_RVACB',''));
    lbl_MainForm_ControlCB:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_ControlCB',''));
    lbl_MainForm_Label4:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Label4',''));
    lbl_MainForm_Button1:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Button1',''));
    lbl_MainForm_Label5:=FormatIt(daini.ReadString('LANGRES','lbl_MainForm_Label5',''));

    {LISTVIEW CONTROLS}
    lv_PLV_col0:=FormatIt(daini.ReadString('LANGRES','lv_PLV_col0',''));
    lv_PLV_col1:=FormatIt(daini.ReadString('LANGRES','lv_PLV_col1',''));
    lv_PLV_col2:=FormatIt(daini.ReadString('LANGRES','lv_PLV_col2',''));
    lv_PLV_col3:=FormatIt(daini.ReadString('LANGRES','lv_PLV_col3',''));
    lv_PLV_col4:=FormatIt(daini.ReadString('LANGRES','lv_PLV_col4',''));

    {LABELS}
    lbl_MemDmpForm_Label1:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_Label1',''));
    lbl_MemDmpForm_Label2:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_Label2',''));
    lbl_MemDmpForm_ProcDescrLbl:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_ProcDescrLbl',''));
    lbl_MemDmpForm_Label3:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_Label3',''));
    lbl_MemDmpForm_DumpBtn:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_DumpBtn',''));
    lbl_MemDmpForm_RVABtn:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_RVABtn',''));
    lbl_MemDmpForm_CancelBtn:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_CancelBtn',''));
    lbl_MemDmpForm_Button1:=FormatIt(daini.ReadString('LANGRES','lbl_MemDmpForm_Button1',''));

    {TAB CONTROLS}
    tab_pc_tsh1:=FormatIt(daini.ReadString('LANGRES','tab_pc_tsh1',''));
    tab_pc_tsh2:=FormatIt(daini.ReadString('LANGRES','tab_pc_tsh2',''));
    tab_pc_tsh3:=FormatIt(daini.ReadString('LANGRES','tab_pc_tsh3',''));
    grp_SRTypeRG:=FormatIt(daini.ReadString('LANGRES','grp_SRTypeRG',''));

    {LABELS}
    lbl_PrefsForm_o1:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_o1',''));
    lbl_PrefsForm_o2:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_o2',''));
    lbl_PrefsForm_DumpALLCB:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_DumpALLCB',''));
    lbl_PrefsForm_ObjPropCB:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_ObjPropCB',''));
    lbl_PrefsForm_Label1:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_Label1',''));
    lbl_PrefsForm_AllDSFCb:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_AllDSFCb',''));
    lbl_SmartEmulation:=FormatIt(daini.ReadString('LANGRES','lbl_SmartEmulation',''));
    lbl_PrefsForm_okBtn:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_okBtn',''));
    lbl_PrefsForm_cancelBtn:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_cancelBtn',''));
    lbl_PrefsForm_Button3:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_Button3',''));
    lbl_PrefsForm_rmvBtn:=FormatIt(daini.ReadString('LANGRES','lbl_PrefsForm_rmvBtn',''));

    {MESSAGES}
    msg_processing:=FormatIt(daini.ReadString('LANGRES','msg_processing',''));
    msg_loadingtarget:=FormatIt(daini.ReadString('LANGRES','msg_loadingtarget',''));
    msg_dumpingdsfdata:=FormatIt(daini.ReadString('LANGRES','msg_dumpingdsfdata',''));
    msg_dumpingprocs:=FormatIt(daini.ReadString('LANGRES','msg_dumpingprocs',''));
    msg_initpointers:=FormatIt(daini.ReadString('LANGRES','msg_initpointers',''));
    msg_done:=FormatIt(daini.ReadString('LANGRES','msg_done',''));
    msg_done1:=FormatIt(daini.ReadString('LANGRES','msg_done1',''));
    msg_analizefile:=FormatIt(daini.ReadString('LANGRES','msg_analizefile',''));
    msg_dumping_unit_data:=FormatIt(daini.ReadString('LANGRES','msg_dumping_unit_data',''));
    msg_dump_success:=FormatIt(daini.ReadString('LANGRES','msg_dump_success',''));
    msg_ready_secs:=FormatIt(daini.ReadString('LANGRES','msg_ready_secs',''));
    msg_filesaved:=FormatIt(daini.ReadString('LANGRES','msg_filesaved',''));
    msg_notepad_offer:=FormatIt(daini.ReadString('LANGRES','msg_notepad_offer',''));
    msg_novice_delphi_programmer:=FormatIt(daini.ReadString('LANGRES','msg_novice_delphi_programmer',''));
    msg_saving_project:=FormatIt(daini.ReadString('LANGRES','msg_saving_project',''));
    msg_save_complete:=FormatIt(daini.ReadString('LANGRES','msg_save_complete',''));
    msg_peedit_offer:=FormatIt(daini.ReadString('LANGRES','msg_peedit_offer',''));
    msg_thinking:=FormatIt(daini.ReadString('LANGRES','msg_thinking',''));
    msg_loading_idata:=FormatIt(daini.ReadString('LANGRES','msg_loading_idata',''));
    msg_dsf_loaded:=FormatIt(daini.ReadString('LANGRES','msg_dsf_loaded',''));
    msg_exit_dede_confirm:=FormatIt(daini.ReadString('LANGRES','msg_exit_dede_confirm',''));
    msg_creating_exports:=FormatIt(daini.ReadString('LANGRES','msg_creating_exports',''));
    msg_file_created:=FormatIt(daini.ReadString('LANGRES','msg_file_created',''));
    msg_open_files:=FormatIt(daini.ReadString('LANGRES','msg_open_files',''));
    msg_dis_bepatient:=FormatIt(daini.ReadString('LANGRES','msg_dis_bepatient',''));
    msg_process_calls:=FormatIt(daini.ReadString('LANGRES','msg_process_calls',''));
    msg_save_alfwpj:=FormatIt(daini.ReadString('LANGRES','msg_save_alfwpj',''));
    msg_wpjalf_ready:=FormatIt(daini.ReadString('LANGRES','msg_wpjalf_ready',''));
    msg_reload_symbols_ask:=FormatIt(daini.ReadString('LANGRES','msg_reload_symbols_ask',''));
    msg_symbols_reloaded:=FormatIt(daini.ReadString('LANGRES','msg_symbols_reloaded',''));
    msg_load_exp_names:=FormatIt(daini.ReadString('LANGRES','msg_load_exp_names',''));
    msg_load_package:=FormatIt(daini.ReadString('LANGRES','msg_load_package',''));
    msg_load_exp_sym:=FormatIt(daini.ReadString('LANGRES','msg_load_exp_sym',''));
    msg_unload_package:=FormatIt(daini.ReadString('LANGRES','msg_unload_package',''));
    msg_dasm_exp:=FormatIt(daini.ReadString('LANGRES','msg_dasm_exp',''));
    msg_saveing_file:=FormatIt(daini.ReadString('LANGRES','msg_saveing_file',''));
    msg_dsf_success:=FormatIt(daini.ReadString('LANGRES','msg_dsf_success',''));
    msg_peh_corrsaved:=FormatIt(daini.ReadString('LANGRES','msg_peh_corrsaved',''));
    msg_save_succ:=FormatIt(daini.ReadString('LANGRES','msg_save_succ',''));
    msg_save_not_succ:=FormatIt(daini.ReadString('LANGRES','msg_save_not_succ',''));
    msg_load_dsf_now:=FormatIt(daini.ReadString('LANGRES','msg_load_dsf_now',''));
    msg_load_status:=FormatIt(daini.ReadString('LANGRES','msg_load_status',''));
    msg_load_status1:=FormatIt(daini.ReadString('LANGRES','msg_load_status1',''));
    msg_ok_when_loaded:=FormatIt(daini.ReadString('LANGRES','msg_ok_when_loaded',''));

    {TEXTS}
    txt_copyright:=Format(FormatIt(daini.ReadString('LANGRES','txt_copyright','')),[GlobsCurrDeDeVersion]);
    txt_delphi_version:=FormatIt(daini.ReadString('LANGRES','txt_delphi_version',''));
    txt_disassemble_proc:=FormatIt(daini.ReadString('LANGRES','txt_disassemble_proc',''));
    txt_begin_rva:=FormatIt(daini.ReadString('LANGRES','txt_begin_rva',''));
    txt_rightclick4more:=FormatIt(daini.ReadString('LANGRES','txt_rightclick4more',''));
    txt_sect8:=FormatIt(daini.ReadString('LANGRES','txt_sect8',''));
    txt_sect20:=FormatIt(daini.ReadString('LANGRES','txt_sect20',''));
    txt_sect40:=FormatIt(daini.ReadString('LANGRES','txt_sect40',''));
    txt_sect80:=FormatIt(daini.ReadString('LANGRES','txt_sect80',''));
    txt_sect200:=FormatIt(daini.ReadString('LANGRES','txt_sect200',''));
    txt_sect800:=FormatIt(daini.ReadString('LANGRES','txt_sect800',''));
    txt_sect1000:=FormatIt(daini.ReadString('LANGRES','txt_sect1000',''));
    txt_sect1000000:=FormatIt(daini.ReadString('LANGRES','txt_sect1000000',''));
    txt_sect2000000:=FormatIt(daini.ReadString('LANGRES','txt_sect2000000',''));
    txt_sect4000000:=FormatIt(daini.ReadString('LANGRES','txt_sect4000000',''));
    txt_sect8000000:=FormatIt(daini.ReadString('LANGRES','txt_sect8000000',''));
    txt_sect10000000:=FormatIt(daini.ReadString('LANGRES','txt_sect10000000',''));
    txt_sect20000000:=FormatIt(daini.ReadString('LANGRES','txt_sect20000000',''));
    txt_sect40000000:=FormatIt(daini.ReadString('LANGRES','txt_sect40000000',''));
    txt_sect80000000:=FormatIt(daini.ReadString('LANGRES','txt_sect80000000',''));
    txt_align_on_a:=FormatIt(daini.ReadString('LANGRES','txt_align_on_a',''));
    txt_boundary:=FormatIt(daini.ReadString('LANGRES','txt_boundary',''));
    txt_program:=FormatIt(daini.ReadString('LANGRES','txt_program',''));
    txt_program_sup_soon:=FormatIt(daini.ReadString('LANGRES','txt_program_sup_soon',''));
    txt_not_available:=FormatIt(daini.ReadString('LANGRES','txt_not_available',''));
    txt_old_version:=FormatIt(daini.ReadString('LANGRES','txt_old_version',''));
    txt_unk_ver:=FormatIt(daini.ReadString('LANGRES','txt_unk_ver',''));
    txt_epf_version:=FormatIt(daini.ReadString('LANGRES','txt_epf_version',''));
    txt_Remove:=FormatIt(daini.ReadString('LANGRES','txt_Remove',''));
    txt_from_list:=FormatIt(daini.ReadString('LANGRES','txt_from_list',''));
    txt_files_from_list:=FormatIt(daini.ReadString('LANGRES','txt_files_from_list',''));
    txt_dede_loader:=FormatIt(daini.ReadString('LANGRES','txt_dede_loader',''));

    {WANINGS}
    wrn_fileexists:=FormatIt(daini.ReadString('LANGRES','wrn_fileexists',''));
    wrn_not_using_vcl:=FormatIt(daini.ReadString('LANGRES','wrn_not_using_vcl',''));
    wrn_runtime_pkcg:=FormatIt(daini.ReadString('LANGRES','wrn_runtime_pkcg',''));
    wrn_w32dasm_active:=FormatIt(daini.ReadString('LANGRES','wrn_w32dasm_active',''));
    wrn_upx:=FormatIt(daini.ReadString('LANGRES','wrn_upx',''));
    wrn_neolit:=FormatIt(daini.ReadString('LANGRES','wrn_neolit',''));
    wrn_change_file:=FormatIt(daini.ReadString('LANGRES','wrn_change_file',''));

    {ERRORS}
    err_classdump:=FormatIt(daini.ReadString('LANGRES','err_classdump',''));
    err_classes_same_name:=FormatIt(daini.ReadString('LANGRES','err_classes_same_name',''));
    err_specifyfilename:=FormatIt(daini.ReadString('LANGRES','err_specifyfilename',''));
    err_filenotfound:=FormatIt(daini.ReadString('LANGRES','err_filenotfound',''));
    err_d2_app:=FormatIt(daini.ReadString('LANGRES','err_d2_app',''));
    err_might_not_delphi_app:=FormatIt(daini.ReadString('LANGRES','err_might_not_delphi_app',''));
    err_not_delphi_app:=FormatIt(daini.ReadString('LANGRES','err_not_delphi_app',''));
    err_cantload:=FormatIt(daini.ReadString('LANGRES','err_cantload',''));
    err_text_exceeds:=FormatIt(daini.ReadString('LANGRES','err_text_exceeds',''));
    err_invalid_dfm_index:=FormatIt(daini.ReadString('LANGRES','err_invalid_dfm_index',''));
    err_unabletogenproj:=FormatIt(daini.ReadString('LANGRES','err_unabletogenproj',''));
    err_dir_not_found:=FormatIt(daini.ReadString('LANGRES','err_dir_not_found',''));
    err_dir_not_exist:=FormatIt(daini.ReadString('LANGRES','err_dir_not_exist',''));
    err_class_not_found:=FormatIt(daini.ReadString('LANGRES','err_class_not_found',''));
    err_nothing_processed:=FormatIt(daini.ReadString('LANGRES','err_nothing_processed',''));
    err_rva_not_in_CODE:=FormatIt(daini.ReadString('LANGRES','err_rva_not_in_CODE',''));
    err_nothing_to_save:=FormatIt(daini.ReadString('LANGRES','err_nothing_to_save',''));
    err_dsf_ver_not_supp:=FormatIt(daini.ReadString('LANGRES','err_dsf_ver_not_supp',''));
    err_dsf_ver_not_supp_1:=FormatIt(daini.ReadString('LANGRES','err_dsf_ver_not_supp_1',''));
    err_dsf_unabletoload:=FormatIt(daini.ReadString('LANGRES','err_dsf_unabletoload',''));
    err_dsf_failedtoload:=FormatIt(daini.ReadString('LANGRES','err_dsf_failedtoload',''));
    err_dsf_invalid_index:=FormatIt(daini.ReadString('LANGRES','err_dsf_invalid_index',''));
    err_only_one_w32dasm_export:=FormatIt(daini.ReadString('LANGRES','err_only_one_w32dasm_export',''));
    err_disasm_first:=FormatIt(daini.ReadString('LANGRES','err_disasm_first',''));
    err_process1st:=FormatIt(daini.ReadString('LANGRES','err_process1st',''));
    err_symbol_loaded:=FormatIt(daini.ReadString('LANGRES','err_symbol_loaded',''));
    err_cant_open_file:=FormatIt(daini.ReadString('LANGRES','err_cant_open_file',''));
    err_read_beyond:=FormatIt(daini.ReadString('LANGRES','err_read_beyond',''));
    err_proj_header_incorrect:=FormatIt(daini.ReadString('LANGRES','err_proj_header_incorrect',''));
    err_invalid_unit_flag:=FormatIt(daini.ReadString('LANGRES','err_invalid_unit_flag',''));
    err_bad_signature:=FormatIt(daini.ReadString('LANGRES','err_bad_signature',''));
    err_d1_not_supported:=FormatIt(daini.ReadString('LANGRES','err_d1_not_supported',''));
    err_no_pefile_assigned:=FormatIt(daini.ReadString('LANGRES','err_no_pefile_assigned',''));
    err_import_ref:=FormatIt(daini.ReadString('LANGRES','err_import_ref',''));
    err_dasm_err:=FormatIt(daini.ReadString('LANGRES','err_dasm_err',''));
    err_load_symfile:=FormatIt(daini.ReadString('LANGRES','err_load_symfile',''));
    err_invalid_process:=FormatIt(daini.ReadString('LANGRES','err_invalid_process',''));
    err_select_dsf_name:=FormatIt(daini.ReadString('LANGRES','err_select_dsf_name',''));
    err_no_exports:=FormatIt(daini.ReadString('LANGRES','err_no_exports',''));
    err_invalid_file:=FormatIt(daini.ReadString('LANGRES','err_invalid_file',''));
    err_not_delphi_app1:=FormatIt(daini.ReadString('LANGRES','err_not_delphi_app1',''));
    err_failed_enum_proc:=FormatIt(daini.ReadString('LANGRES','err_failed_enum_proc',''));
    err_epf_failed:=FormatIt(daini.ReadString('LANGRES','err_epf_failed',''));
    err_has_no_import:=FormatIt(daini.ReadString('LANGRES','err_has_no_import',''));
    err_has_no_export:=FormatIt(daini.ReadString('LANGRES','err_has_no_export',''));
    err_invalid_rva_interval:=FormatIt(daini.ReadString('LANGRES','err_invalid_rva_interval',''));
    err_unk_dcu_flag:=FormatIt(daini.ReadString('LANGRES','err_unk_dcu_flag',''));
    err_2nd_ast_notallow:=FormatIt(daini.ReadString('LANGRES','err_2nd_ast_notallow',''));
    err_not_enuff_code:=FormatIt(daini.ReadString('LANGRES','err_not_enuff_code',''));
    err_invalid_operand:=FormatIt(daini.ReadString('LANGRES','err_invalid_operand',''));
    err_invalid_operand_size:=FormatIt(daini.ReadString('LANGRES','err_invalid_operand_size',''));

    {SHORT DESCRIPTIONS}
    dscr_o1:=FormatIt(daini.ReadString('LANGRES','dscr_o1',''));
    dscr_o2:=FormatIt(daini.ReadString('LANGRES','dscr_o2',''));
    dscr_o4:=FormatIt(daini.ReadString('LANGRES','dscr_o4',''));
    dscr_o8:=FormatIt(daini.ReadString('LANGRES','dscr_o8',''));
    dscr_o10:=FormatIt(daini.ReadString('LANGRES','dscr_o10',''));
    dscr_o20:=FormatIt(daini.ReadString('LANGRES','dscr_o20',''));
    dscr_o40:=FormatIt(daini.ReadString('LANGRES','dscr_o40',''));
    dscr_o80:=FormatIt(daini.ReadString('LANGRES','dscr_o80',''));
    dscr_o100:=FormatIt(daini.ReadString('LANGRES','dscr_o100',''));
    dscr_o200:=FormatIt(daini.ReadString('LANGRES','dscr_o200',''));
    dscr_o400:=FormatIt(daini.ReadString('LANGRES','dscr_o400',''));
    dscr_o1000:=FormatIt(daini.ReadString('LANGRES','dscr_o1000',''));
    dscr_o2000:=FormatIt(daini.ReadString('LANGRES','dscr_o2000',''));
    dscr_o4000:=FormatIt(daini.ReadString('LANGRES','dscr_o4000',''));
    dscr_o8000:=FormatIt(daini.ReadString('LANGRES','dscr_o8000',''));

    //////////////////////////////////////////////////////
    //  NEW RESOURCES
    /////////////////////////////////////////////////////
    msg_reset_adj_sett:=FormatIt(daini.ReadString('LANGRES','msg_reset_adj_sett',''));
    msg_finalclassdmp:=FormatIt(daini.ReadString('LANGRES','msg_finalclassdmp',''));
    msg_loaddoi:=FormatIt(daini.ReadString('LANGRES','msg_loaddoi',''));
    msg_dumpingclasses:=FormatIt(daini.ReadString('LANGRES','msg_dumpingclasses',''));
    wrn_d2_app:=FormatIt(daini.ReadString('LANGRES','wrn_d2_app',''));
    err_can_not_create_process:=FormatIt(daini.ReadString('LANGRES','err_can_not_create_process',''));
    msg_load_in_sice :=FormatIt(daini.ReadString('LANGRES','msg_load_in_sice ',''));
    msg_load_in_sice_manually :=FormatIt(daini.ReadString('LANGRES','msg_load_in_sice_manually ',''));
    msg_read_package_info :=FormatIt(daini.ReadString('LANGRES','msg_read_package_info ',''));
    msg_verifying_file :=FormatIt(daini.ReadString('LANGRES','msg_verifying_file ',''));
    wrn_KOL_found:=FormatIt(daini.ReadString('LANGRES','wrn_KOL_found',''));









