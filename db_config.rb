#
# db_config.rb
# simul
# by Tim :D
#

require 'pg'

# Load database
def db_sources_connection
  begin
    connection = PG.connect(dbname: 'simul_sources_t')
    yield(connection)
  ensure
    connection.close
  end
end

def db_search_history_connection
  begin
    connection = PG.connect(dbname: 'simul_search_history_t')
    yield(connection)
  ensure
    connection.close
  end
end