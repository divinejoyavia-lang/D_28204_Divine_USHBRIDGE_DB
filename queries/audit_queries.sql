-- Audit Queries
-- Purpose: Verify auditing and security restrictions

-- View all audit log entries
SELECT *
FROM audit_log
ORDER BY action_date DESC;

-- Count denied actions
SELECT
    action_type,
    COUNT(*) AS denied_count
FROM audit_log
WHERE action_status = 'DENIED'
GROUP BY action_type;

-- View audit activity per user
SELECT
    username,
    COUNT(*) AS total_actions
FROM audit_log
GROUP BY username;
