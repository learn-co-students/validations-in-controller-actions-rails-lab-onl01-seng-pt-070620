class Post < ActiveRecord::Base
    validates :title, presence:true
    validates :category, inclusion:{in: %w(Fiction Non-Fiction)}
    validates_length_of :content, minimum:100
end
