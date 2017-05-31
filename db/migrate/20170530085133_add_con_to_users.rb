class AddConToUsers < ActiveRecord::Migration
    def up
        execute %{
        ALTER TABLE
        users
        ADD CONSTRAINT
        email_must_be_com_email
        CHECK(email ~* '^[^@]+@example\\.com')
}
    end

    def down
        execute %{
        ALTER TABLE
        users
        DROP CONSTRAINT
        email_must_be_com_email
}
    end
end
 
 
 
