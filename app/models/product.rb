#encoding:utf-8
class Product < ActiveRecord::Base
  default_scope :order => 'title'
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :title, :length => {:minimum => 10, :message => '原因，就不告诉你'}
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    #:message => 'must be a URL for GIF, JPG or PNG image.'
    :message => '亲耐的请选取图片文件(一般是用JPG/PNG/GIF结尾)'
  }
end
