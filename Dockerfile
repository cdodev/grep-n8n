FROM n8nio/n8n

ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER
ARG ENCRYPTION_KEY
ARG RAILWAY_STATIC_URL
ARG GREP_API_ENDPOINT

ARG USERNAME
ARG PASSWORD

ARG PORT
ARG HOST

ARG N8N_SMTP_HOST
ARG N8N_SMTP_USER
ARG N8N_SMTP_PASS
ARG N8N_SMTP_SENDER

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=$PGDATABASE
ENV DB_POSTGRESDB_HOST=$PGHOST
ENV DB_POSTGRESDB_PORT=$PGPORT
ENV DB_POSTGRESDB_USER=$PGUSER
ENV DB_POSTGRESDB_PASSWORD=$PGPASSWORD

ENV N8N_PORT=$PORT
ENV N8N_HOST=$RAILWAY_STATIC_URL
ENV WEBHOOK_URL=https://$RAILWAY_STATIC_URL
ENV N8N_ENCRYPTION_KEY=$ENCRYPTION_KEY
ENV N8N_GREP_API_ENDPOINT=$GREP_API_ENDPOINT

ENV N8N_SMTP_HOST=$N8N_SMTP_HOST
ENV N8N_SMTP_USER=$N8N_SMTP_USER
ENV N8N_SMTP_PASS=$N8N_SMTP_PASS
ENV N8N_SMTP_SENDER=$N8N_SMTP_SENDER

CMD ["n8n", "start"]
