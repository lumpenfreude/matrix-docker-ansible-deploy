user = {{ matrix_mail_server_database_user }}
password = {{ matrix_mail_server_database_password }}
hosts = {{ matrix_mail_server_database_host }}
dbname = {{ matrix_mail_server_database_name }}
query = SELECT policy, params FROM tlspolicies WHERE domain = '%s'
