# specifying what pckages to run and what to set up on the node thats running a dbt project

FROM python:3.11-slim
RUN apt-get update && apt-get install -y curl gnupg unixodbc-dev build-essential

# adding sql server odbc packages
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -&& \
    curl https://packages.microsoft.com/config/debian/12/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && ACCEPT_EULA=y apt-get install -y mssql18 mssql-tools18

# python dbt core and sql server adapter !!==<CURRENT MOST RECENT FULLY SUPPORTED VERSION>!!
RUN pip install --no-cache-dir "dbt-core==1.9.*" "dbt-sqlserver==1.9.*" "dbt-postgres==1.9.*"
WORKDIR /usr/app
ENV DBT_PROFILES_DIR=/profiles