require 'bundler/setup'
Bundler.require

if development?
  ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
end

class Bread < ActiveRecord::Base
  validates :name,
    presence: true
  validates :price,
    presence: true
  belongs_to :list
end

class List < ActiveRecord::Base
  has_many :breads
end