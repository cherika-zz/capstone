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


puts "#{State.count} states created"
puts "#{Reg.count} regs created"
puts "#{Application.count} applications created"
