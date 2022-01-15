%:- use_module(library(scasp)). %% include the scasp package.
%:- style_check(-singleton). %% remove warning due to singletons.

% FORMAT for the rule:
% question(company_name, category, question_title, question_weight, yes(=1)/no(=0)).

question(acme, manage, document_privacy, 2, 1).
question(acme, manage, awareness_program, 1.5, 0).
question(acme, notice, communicated, 1.5, 1).
question(acme, notice, rights_obligations, 1, 0).
question(acme, consent, consequences_communicated, 1.5, 1).
question(acme, consent, sensitive_data_explicit_consent, 2, 0).
question(acme, collection, collection_info_documentation, 1.5, 1).
question(acme, collection, data_collected_lawfully, 1.5, 0).
question(acme, use_disposal, info_used_disposed_correctly, 2, 0).
question(acme, use_disposal, destroyed_securely_after_use, 1, 1).
question(acme, access, confirm_id_before_diclosing_info, 2, 1).
question(acme, access, personal_info_presentation, 0.5, 0).
question(acme, disclosure, inform_disclosing_info, 1.5, 1).
question(acme, disclosure, new_use_personal_info, 1, 1).
question(acme, security, policy_security_information, 1.5, 1).
question(acme, security, info_sec_program, 1.5, 0).
question(acme, quality, process_info_update_ensure_accuracy, 1, 1).
question(acme, quality, process_ensure_info_recieved_accuracy, 1.5, 1).
question(acme, monitoring, procedure_contact_disputes_enquiry, 1.5, 1).
question(acme, monitoring, document_track_disputes_enquiry, 1.5, 0).

question(rat, manage, document_privacy, 2, 0).
question(rat, manage, awareness_program, 1.5, 0).
question(rat, notice, communicated, 1.5, 1).
question(rat, notice, rights_obligations, 1, 0).
question(rat, consent, consequences_communicated, 1.5, 1).
question(rat, consent, sensitive_data_explicit_consent, 2, 0).
question(rat, collection, collection_info_documentation, 1.5, 1).
question(rat, collection, data_collected_lawfully, 1.5, 0).
question(rat, use_disposal, info_used_disposed_correctly, 2, 0).
question(rat, use_disposal, destroyed_securely_after_use, 1, 1).
question(rat, access, confirm_id_before_diclosing_info, 2, 1).
question(rat, access, personal_info_presentation, 0.5, 0).
question(rat, disclosure, inform_disclosing_info, 1.5, 1).
question(rat, disclosure, new_use_personal_info, 1, 1).
question(rat, security, policy_security_information, 1.5, 1).
question(rat, security, info_sec_program, 1.5, 0).
question(rat, quality, process_info_update_ensure_accuracy, 1, 1).
question(rat, quality, process_ensure_info_recieved_accuracy, 1.5, 1).
question(rat, monitoring, procedure_contact_disputes_enquiry, 1.5, 1).
question(rat, monitoring, document_track_disputes_enquiry, 1.5, 0).

question(abc,manage,document_privacy,2,1).
question(abc,manage,awareness_program,1.5,0).
question(abc,manage,policy_update,1,1).
question(abc,notice,communicated,1.5,1).
question(abc,notice,rights_obligations,1,0).
question(abc,notice,secondary_use_consent,2,0).
question(abc,consent,consequences_communicated,1.5,0).
question(abc,consent,sensitive_data_explicit_consent,2,1).
question(abc,consent,consent_request_seperation,0.5,1).
question(abc,collection,collection_info_documentation,1.5,0).
question(abc,collection,data_collected_lawfully,1.5,0).
question(abc,collection,personal_info_audit,1,0).
question(abc,use_disposal,info_used_disposed_correctly,2,0).
question(abc,use_disposal,destroyed_securely_after_use,1,1).
question(abc,use_disposal,personal_info_usage,1.5,1).
question(abc,access,confirm_id_before_diclosing_info,2,1).
question(abc,access,personal_info_presentation,0.5,1).
question(abc,access,security_control,1.5,0).
question(abc,disclosure,inform_disclosing_info,1.5,1).
question(abc,disclosure,new_use_personal_info,1,0).
question(abc,disclosure,list_all_info,0.5,1).
question(abc,security,policy_security_information,1.5,0).
question(abc,security,info_sec_program,1.5,1).
question(abc,security,access_restrictions,1,0).
question(abc,quality,process_info_update_ensure_accuracy,1,1).
question(abc,quality,process_ensure_info_recieved_accuracy,1.5,0).
question(abc,quality,provide_explanation,0.5,1).
question(abc,monitoring,procedure_contact_disputes_enquiry,1.5,1).
question(abc,monitoring,document_track_disputes_enquiry,1.5,1).
question(abc,monitoring,privacy_complaint_info,0.5,0).

