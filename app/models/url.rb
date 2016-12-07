class Url < ApplicationRecord
  validates :long_url, :uniqueness => true ,:url => true
  validates :short_url, :uniqueness => true


  def self.generate_url
    var=(1..6).map{ ('a'..'z').to_a[rand(26)]}.join
    return var
  end

end
