class CreateCaminioTables < ActiveRecord::Migration
  def change

    create_table :users do |t|

      t.string        :username
      t.string        :firstname
      t.string        :lastname
      t.string        :email, required: true
      t.string        :phone
      t.string        :categories

      t.datetime      :last_login_at
      t.datetime      :last_request_at
      t.string        :last_login_ip

      t.string        :password_digest

      t.string        :confirmation_key
      t.datetime      :confirmation_key_expires_at

      t.string        :public_key
      t.string        :private_key

      t.boolean       :api_user, default: false
      t.text          :settings

      t.datetime      :expires_at

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :categories
    add_index :users, :public_key, unique: true
    add_index :users, :private_key, unique: true

    create_table :organizational_unit_members do |t|
      t.integer       :user_id
      t.integer       :organizational_unit_id
      t.integer       :access_level, default: 1
      t.timestamps
    end
    add_index :organizational_unit_members, :user_id
    add_index :organizational_unit_members, :organizational_unit_id

    create_table :organization_unit_app_plans do |t|
      t.integer       :app_plan_id
      t.integer       :organizational_unit_id
    end
    add_index :organizational_unit_app_plans, :app_plan_id
    add_index :organizational_unit_app_plans, :organizational_unit_id

    create_table :app_plans do |t|
      t.string        :name
      t.integer       :price
      t.integer       :app_id
      t.integer       :users_amount, default: 1
      t.boolean       :visible, default: false
      t.timestamps
    end
    add_index :app_plans, :app_id, unique: true

    create_table :apps do |t|
      t.string        :name
      t.boolean       :is_public
    end

    create_table :organizational_units do |t|

      t.string        :name
      t.integer       :owner_id
      t.string        :type
      t.string        :color
      t.text          :settings
      t.timestamps

    end
    add_index :organizational_units, :type
    add_index :organizational_units, :app_id

    create_table :messages do |t|

      t.string        :title
      t.text          :content
      t.integer       :followup_id
      t.integer       :created_by
      t.integer       :organizational_unit_id
      t.timestamps

    end
    add_index :messages, :followup_id
    add_index :messages, :created_by

    create_table :api_keys do |t|
      t.references    :user
      t.string        :access_token
      t.datetime      :expires_at
    end

    add_index :api_keys, :user_id, unique: true

  end
end