./bin/liquibase --driver=oracle.jdbc.OracleDriver \
     --url="jdbc:oracle:thin:@0.0.0.0:1521/ORCLCDB" \
     --username=c##utplsql \
     --password=hr \
     --changeLogFile=data.yml \
     --logLevel=sql \
     update

