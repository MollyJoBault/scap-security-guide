# platform = Red Hat Enterprise Linux 7

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Perform the remediation
# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
fix_audit_watch_rule "auditctl" "/etc/group" "wa" "identity"
fix_audit_watch_rule "augenrules" "/etc/group" "wa" "identity"
fix_audit_watch_rule "auditctl" "/etc/passwd" "wa" "identity"
fix_audit_watch_rule "augenrules" "/etc/passwd" "wa" "identity"
fix_audit_watch_rule "auditctl" "/etc/gshadow" "wa" "identity"
fix_audit_watch_rule "augenrules" "/etc/gshadow" "wa" "identity"
fix_audit_watch_rule "auditctl" "/etc/shadow" "wa" "identity"
fix_audit_watch_rule "augenrules" "/etc/shadow" "wa" "identity"
fix_audit_watch_rule "auditctl" "/etc/security/opasswd" "wa" "identity"
fix_audit_watch_rule "augenrules" "/etc/security/opasswd" "wa" "identity"
fix_audit_watch_rule "auditctl" "/etc/sysconfig/authconfig" "wa" "login_configuration"
fix_audit_watch_rule "augenrules" "/etc/sysconfig/authconfig" "wa" "login_configuration"
fix_audit_watch_rule "auditctl" "/etc/login.defs" "wa" "login_configuration"
fix_audit_watch_rule "augenrules" "/etc/login.defs" "wa" "login_configuration"
