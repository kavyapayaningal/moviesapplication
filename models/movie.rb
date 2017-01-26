
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class Movie
  include DataMapper::Resource
  property :id, Serial
  property :name, String, :required => true
  property :director, String
  property :year, String
end
DataMapper.finalize
