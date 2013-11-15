Sequel.migration do
  up do
    run "CREATE EXTENSION citext"
    run "CREATE EXTENSION moddatetime"
    run 'CREATE EXTENSION "uuid-ossp"'
  end

  down do
    run 'CREATE EXTENSION "uuid-ossp"'
    run "CREATE EXTENSION moddatetime"
    run "CREATE EXTENSION citext"
  end
end
