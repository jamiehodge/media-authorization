Sequel.migration do
  up do
    create_table :authorizations do
      uuid_primary_key

      citext :person_id, null: false

      timestamps
      lock_version
    end

    create_timestamp_trigger :authorizations
  end

  down do
    drop_timestamp_trigger :authorizations
    drop_table :authorizations
  end
end
