Sequel.migration do
  change do
    alter_table :revisions do
      add_column :droplet_guid, String, size: 255
    end
  end
end
