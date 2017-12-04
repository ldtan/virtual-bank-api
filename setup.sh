# Setup:
# 
# 1. Install Requirements
# 2. Configure Database
# 3. Initialize Database

# [START of Install Requirements]
# gem install bundler
# bundle install
# [END of Install Requirements]

# [START of Configure Database]
# 1. In the source folder, go to config/database.yml
# 2. Edit the username and password information depending on your postgresql role.
# [END of Configure Database]

# [START of Initialize Database]
rails destroy scaffold User
rails destroy scaffold AccountType
rails destroy scaffold Account
rails destroy scaffold MediumType
rails destroy scaffold Medium
rails destroy scaffold Session
rails generate scaffold User is_active:boolean first_name:string middle_name:string last_name:string birthdate:date address:string phone_contact:string mobile_contact:string
rails generate scaffold AccountType is_active:boolean name:string available_mediums:jsonb
rails generate scaffold Account is_active:boolean username:string password:string account_type:integer
rails generate scaffold MediumType is_active:boolean name:string details:jsonb
rails generate scaffold Medium is_active:boolean name:string account_id:integer medium_type:integer total_amount:money
rails generate scaffold Session is_active:boolean access_token:string is_active:boolean account_id:integer
rails db:drop db:create db:migrate
# [END of Initialize Database]