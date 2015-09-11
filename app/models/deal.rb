class Deal < ActiveRecord::Base
    has_many :comments
    has_many :votes

    scope :hot, -> { where('sum_votes > ? AND created_at > ?', 10,  DateTime.now.to_date - 7 )}
end
