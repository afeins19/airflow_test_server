# tests connecting to a MSSQL server instance running in a container 

from sqlalchemy import text, create_engine
#     connection_string = "mssql+pyodbc://<username>:<password>@<host>:<port>/<database>?driver=<ODBC_Driver_Name>"
CONNECTION_STRING = "mssql+pyodbc://admin:Bababababad!@192.168.1.162:1433"

engine = create_engine(CONNECTION_STRING)


