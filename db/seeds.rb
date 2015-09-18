%w{AR AL CA NV}.each do |state|
  st = State.new(name: state)
  st.save
end

states = State.all

20.times do |n|
  reg = Reg.new(
    name: "Reg ##{n}",
    state: states.sample
  )
  reg.save
end

20.times do |n|
  application = Application.new(
    name: "TNC Application ##{n}",
    state: states.sample
  )
  application.save
end

admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'password',
   role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!

 editor = User.new(
    name:     'Editor User',
    email:    'editor@example.com',
    password: 'password',
    role:     'editor'
  )
  editor.skip_confirmation!
  editor.save!

  viewer = User.new(
     name:     'Viewer User',
     email:    'viewer@example.com',
     password: 'password',
     role:     'viewer'
   )
   viewer.skip_confirmation!
   viewer.save!


puts "#{State.count} states created"
puts "#{Reg.count} regs created"
puts "#{Application.count} applications created"
