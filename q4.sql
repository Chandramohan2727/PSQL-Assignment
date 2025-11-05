SET @table  = 'employee';
SET @column = 'employee_id';
SET @index  = CONCAT(@table, '_', @column, '_idx');

SET @sql = (
    SELECT IF(
        COUNT(*) = 0,
        CONCAT('CREATE INDEX ', @index, ' ON ', @table, '(', @column, ');'),
        CONCAT('SELECT ''Index already exists: ', @index, ''';')
    )
    FROM information_schema.statistics
    WHERE table_schema = DATABASE()
      AND table_name = @table
      AND index_name = @index
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
