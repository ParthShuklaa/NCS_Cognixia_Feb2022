use NCS2020;

SELECT * FROM AGENTS;

--Show records all the agents sorted by Working Area

SELECT * FROM AGENTS
ORDER BY WORKING_AREA;

--We Can use DESC for descending order

SELECT * FROM AGENTS
ORDER BY WORKING_AREA DESC;

--We Can Implement Order by on Several Column
SELECT * FROm AGENTS
ORDER By WORKING_AREA,AGENT_NAME;

SELECT * FROM AGENTS
ORDER BY WORKING_AREA ASC, AGENT_NAME DESC;

sp_helpindex '[dbo].[Invoice]';
