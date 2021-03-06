---
-- #%L
-- JSQLParser library
-- %%
-- Copyright (C) 2004 - 2019 JSQLParser
-- %%
-- Dual licensed under GNU LGPL 2.1 or Apache License 2.0
-- #L%
---
select lpad(' ',2*(level-1)) || last_name org_chart, 
        employee_id, manager_id, job_id
    from employees
    where job_id != 'fi_mgr'
    start with job_id = 'ad_vp' 
    connect by prior employee_id = manager_id


--@SUCCESSFULLY_PARSED_AND_DEPARSED first on Aug 3, 2021, 7:20:08 AM