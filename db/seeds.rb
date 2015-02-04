def create_users
  users = [{
    email: 'admin@example.com',
    password: '12345678',
    password_confirmation: '12345678'
  }, {
    email: 'tungphan@asnet.com.com',
    password: '12345678',
    password_confirmation: '12345678'
  }, {
    email: 'tungpt247@gmail.com',
    password: '12345678',
    password_confirmation: '12345678'
  }
  ]
  users.each do |user|
    u = User.new(user)
    u.save!
  end
end

# perform create users
create_users
