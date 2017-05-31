class AddEmailConstToUsers < ActiveRecord::Migration
    def up
        execute %{
        ALTER TABLE
        users
        ADD CONSTRAINT
        email_must_be_comp_email
        CHECK(email ~* '^[^@]+@example\\.com')
}
    end

    def down
        execute %{
        ALTER TABLE
        users
        DROP CONSTRAINT
        email_must_be_comp_email
}
    end
end
