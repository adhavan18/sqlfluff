PREPARE my_select1 FROM
SELECT * FROM nation;

PREPARE my_select2 FROM
SELECT name FROM nation WHERE regionkey = ? AND nationkey < ?;

PREPARE my_insert FROM
INSERT INTO cities VALUES (1, 'San Francisco');

EXECUTE my_select1;

EXECUTE my_select2 USING 1, 3;

EXECUTE IMMEDIATE 'SELECT name FROM nation';

EXECUTE IMMEDIATE
'SELECT name FROM nation WHERE regionkey = ? AND nationkey < ?'
USING 1, 3;

DEALLOCATE PREPARE my_select1;
