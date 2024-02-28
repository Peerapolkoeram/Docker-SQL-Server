FROM mcr.microsoft.com/mssql/server:2022-latest

# เรียกใช้ SQL Server Agent
ENV MSSQL_AGENT_ENABLED true

# สร้างโฟลเดอร์สำหรับ mount volumes
RUN mkdir -p /var/opt/sqlserver-agent

# กำหนดไดเร็คทอรี่ที่ใช้เก็บไฟล์ของ SQL Server Agent
ENV SQL_AGENT_ERROR_LOG_PATH /var/opt/sqlserver-agent

# เรียกใช้งาน SQL Server Agent
RUN /opt/mssql/bin/mssql-conf set sqlagent.enabled true