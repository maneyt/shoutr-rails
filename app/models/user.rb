class User < ActiveRecord::Base
  has_many :shouts

  has_many :followed_user_relationships,
    class_name: "FollowingRelationship", 
    foreign_key: :follower_id

  has_many :followed_users,
    through: :followed_user_relationships


  def follow(other_user)
    followed_users << other_user
  end

  def following?(other_user)
    followed_users.include?(other_user)
  end

  def unfollow(other_user)
    followed_users.destroy(other_user)
  end

  def followed_shouts
    shouts = []
    followed_users.each do |user|
      user.shouts.each do |shout|
        shouts << shout
      end
    end
    shouts
  end
end
