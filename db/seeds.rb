# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# number of rows for each entity
number_deals = 100
number_votes = number_deals * 50
number_comments = number_deals * 50

# create the deals
deal_list = []
number_deals.times do |i|
    deal_list.push({
        :title => Faker::Commerce.product_name,
        :slug => Faker::Internet.slug(nil, '-'),
        :description => Faker::Lorem.paragraphs(Random.rand(3..10)).join("\n"),
        :deal_url => Faker::Internet.url,
        :img => "//placehold.it/500x500",
        :price => Faker::Commerce.price
    })
end
deal_list = Deal.create(deal_list)


# populate the votes table
vote_list = []
number_votes.times do |i|
    vote_list.push({
        :vote => Random.rand(-1..1).to_i,
        :deal => deal_list.sample
    })

    if vote_list.length % 100 == 0 || i == number_votes
        Vote.create(vote_list)
        vote_list = []
    end
end

# populate the comments table
comment_list = []
number_comments.times do |i|
    comment_list.push({
        :content => Faker::Lorem.paragraphs(Random.rand(1..3)).join("\n"),
        :deal => deal_list.sample
    })

    if comment_list.length % 100 == 0 || i == number_comments
        Comment.create(comment_list)
        comment_list = []
    end
end
