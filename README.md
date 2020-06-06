Simple program to quickly analayse the logs for known errors 

(1) type (2) timestamp (3) elb (4) client:port (5) target:port (6) request_processing_time (7) target_processing_time 
(8) response_processing_time (9) elb_status_code (10) target_status_code (11) received_bytes (12) sent_bytes (13,14,15) "request" (16) "user_agent" (17) ssl_cipher (18) ssl_protocol (19) target_group_arn (20) "trace_id" (21) "domain_name" (22) "chosen_cert_arn" (23) matched_rule_priority (24) request_creation_time (25) "actions_executed" (26) "redirect_url" (27) "error_reason" (28) "target:port_list" (29) "target_status_code_list"

Usage

It accepts two line arguments first elb status code and second working directory where logs are download
e.g below will show output of all 502 errors

python elb.py 502 /home/foo/ | awk '{print $2,$6,$7,$8,$9,$10}' | sort
