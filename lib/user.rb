require "pry"

class User
  attr_accessor  :name , :email


  @@user_count = 0
  @@user_name = []

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count+= 1
  end

  def update_email(email_to_update)
    @email = email_to_update
  end
  
  def name
  	@@user_name[@@user_count]=@name
    return @name
  end 
  
  def update_name(new_name)
    x=@@user_name.index(@name)
    @name = new_name
    @@user_name[x]=new_nam
    
  end
  
  private

  def self.count
    return @@user_count
  end

  def self.all
    return @@user_name
  end

   def self.find_by_email(email)
 	return email
 end


  

end
binding.pry
puts "end of file"