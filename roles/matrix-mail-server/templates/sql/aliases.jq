user = {{ matrix_mail_server_database_user }}
password = {{ matrix_mail_server_database_password }}
hosts = {{ matrix_mail_server_database_host }}
dbname = {{ matrix_mail_server_database_name }}
query = select concat(destination_username, '@', destination_domain) as destinations from aliases where source_username = '%u' and source_domain = '%d' and enabled = true;
