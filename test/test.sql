SELECT * FROM mphd.customer_attributes_weekly WHERE weekstartdate = '${weekToQuery}';

UNLOAD('SELECT * FROM source.import_variants;') TO ''
CREDENTIALS 'aws_iam_role=${REDSHIFT_DB_IAM}'
DELIMITER AS '|'
ALLOWOVERWRITE
GZIP;
