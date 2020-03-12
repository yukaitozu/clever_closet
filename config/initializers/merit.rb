# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  # config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  # config.current_user_method = 'current_user'
end

Merit::Badge.create!(
  id: 1,
  name: "Beginner Donator",
  description: "Donated 1-4 items",
  custom_fields: { image: 'badge1.png'}
)

Merit::Badge.create!(
  id: 2,
  name: "Master Donator",
  description: "Donated 5-9 items",
  custom_fields: { image: 'badge5.png'}
)

Merit::Badge.create!(
  id: 3,
  name: "Novice Donator",
  description: "Donated 10-24 items",
  custom_fields: { image: 'badge3.png'}
)

Merit::Badge.create!(
  id: 4,
  name: "Intermediate Donator",
  description: "Donated 25-49 items",
  custom_fields: { image: 'badge4.png'}
)

Merit::Badge.create!(
  id: 5,
  name: "Amateur Donator",
  description: "Donated 50-74 items",
  custom_fields: { image: 'badge2.png'}
)

Merit::Badge.create!(
  id: 6,
  name: "Expert Donator",
  description: "Donated 75-100 items",
  custom_fields: { image: 'badge6.png'}
)

# Merit::Badge.create!(
#   id: 2,
#   name: "Lender",
#   description: "Lent an item",
#   level: [1, 5, 10, 20, 35, 50, 75, 100]
# )

# Merit::Badge.create!(
#   id: 3,
#   name: "Borrower",
#   description: "Borrowed an item",
#   level: [1, 5, 10, 20, 35, 50, 75, 100]
# )


# Create application badges (uses https://github.com/norman/ambry)
# badge_id = 0
# [{
#   id: (badge_id = badge_id+1),
#   name: 'just-registered'
# }, {
#   id: (badge_id = badge_id+1),
#   name: 'best-unicorn',
#   custom_fields: { category: 'fantasy' }
# }].each do |attrs|
#   Merit::Badge.create! attrs
# end
