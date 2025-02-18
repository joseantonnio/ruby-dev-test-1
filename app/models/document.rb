# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :directory
  has_one_attached :content

  def name
    content.filename.to_s
  end

  def content_type
    content.content_type.to_s
  end

  def size
    content.byte_size
  end

  def path
    "#{directory.path}/#{name}"
  end
end
