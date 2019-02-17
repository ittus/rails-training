class Link < ApplicationRecord
  IMAGE_FORMATS = %w(.jpg .gif .png)

  validates :title, presence: true
  validates :url, presence: true

  def self.hottest_first
    order("upvotes - downvotes DESC")
  end

  def upvote
    increment!(:upvotes)
  end

  def downvote
    increment!(:downvotes)
  end


  def score
    upvotes - downvotes
  end

  def image?
    url.end_with? *IMAGE_FORMATS
  end

end
