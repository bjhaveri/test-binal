SELECT * FROM mphd.customer_attributes_weekly WHERE weekstartdate = '${weekToQuery}' LIMIT 5;

UNLOAD('SELECT * FROM source.import_variants;') TO '${s3DirToUnload}'
CREDENTIALS 'aws_iam_role=${REDSHIFT_DB_IAM}'
DELIMITER AS '|'
ALLOWOVERWRITE
GZIP;
