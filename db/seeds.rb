# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  papers = []

[{title: "Guardian", editor: "Bolky" },
{title: "The SF Chronicle", editor: "Paula Radster" },
{title: "Great News", editor: "Productomus Maximus" }].each do |paper|
    papers << Newspaper.new(paper)
end

  papers[0].subscription_plans_attributes = ([
    {price: 20, daily: true},
    {price: 5, daily: false}
    ])
  papers[1].subscription_plans_attributes = ([
    {price: 30, daily: true},
    {price: 10, daily: false}
    ])
  papers[2].subscription_plans_attributes = ([
    {price: 50, daily: true},
    {price: 4, daily: false}
    ])

  papers.each { |paper| paper.save! }
end