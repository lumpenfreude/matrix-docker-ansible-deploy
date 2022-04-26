user = {{ matrix_mail_server_database_user }}
password = {{ matrix_mail_server_database_password }}
hosts = {{ matrix_mail_server_database_host }}
dbname = {{ matrix_mail_server_database_name }}
query = select 1 as found from accounts where username = '%u' and domain = '%d' and enabled = true LIMIT 1;
