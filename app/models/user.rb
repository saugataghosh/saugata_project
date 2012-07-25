class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many:posts 
  validates :email,:f_name,:l_name,:presence=>true
  validates :username,:length=>{:maximum=>10}
  before_save :ensure_fullname_has_a_value, :ensure_username, :check_for_lowercase
  protected
  def ensure_fullname_has_a_value
    if full_name.blank?
      self.full_name=f_name+" "+l_name
    end
  end
 def ensure_username
if username.blank?
self.username=email 
end
end
def check_for_lowercase
if username==username.downcase
self.username=username.capitalize unless username.blank?
end
if f_name==f_name.downcase || l_name==l_name.downcase
self.f_name=f_name.capitalize 
self.l_name=l_name.capitalize 
end
end
end
