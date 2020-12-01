class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  # validations
  validates_presence_of :title, :body, :topic_id, :snippet, :cover

  # blogs is owned by topics
  belongs_to :topic

  def self.recent
    order("created_at DESC")
  end
end
