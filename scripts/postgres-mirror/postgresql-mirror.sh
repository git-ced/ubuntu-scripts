# Color
COLOR_BLUE='\e[1;34m'
NO_COLOR='\e[0m'

# User defined variables
SCRIPT_DIRECTORY=''
DUMP_DIRECTORY=''
REMOTE_PG_PASSWORD=''
REMOTE_PG_USER=''
REMOTE_PG_HOST=''
REMOTE_PG_PORT=''
REMOTE_PG_DB=''
LOCAL_PG_USER=''

colored_echo () {
  echo -e "${COLOR_BLUE}$1${NO_COLOR}"
}

# Start of script
colored_echo "Starting script..."

# Clean local Lyon schema
colored_echo "Changing to Custom script directory..."
cd ${SCRIPT_DIRECTORY}

colored_echo "Dropping public schema..."
psql ${LOCAL_PG_USER} -f drop-schema.sql

colored_echo "Creating public schema..."
psql ${LOCAL_PG_USER} -f create-schema.sql

# Copy Lyon database from prod
colored_echo "Changing to SQL Dump directory..."
cd ${DUMP_DIRECTORY}

colored_echo "Creating dump SQL file with the name postgres-dump.sql..."
PGPASSWORD=${REMOTE_PG_PASSWORD} pg_dump -U ${REMOTE_PG_USER} -h ${REMOTE_PG_HOST} -p ${REMOTE_PG_PORT} ${REMOTE_PG_DB} > postgres-dump.sql

# Import it to the local Lyon database
colored_echo "Importing postgres-dump.sql to local Lyon database..."
psql ${LOCAL_PG_USER} < postgres-dump.sql

# End of script
colored_echo "Ending script..."
