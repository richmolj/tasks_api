Task.delete_all
(8..12).each do |team_id|
  ["Epic", "Bug", "Feature"].each do |type|
    Task.create! \
      title: Faker::Lorem.sentence,
      team_id: team_id,
      employee_id: (1..100).to_a.sample,
      type: type
  end
end
