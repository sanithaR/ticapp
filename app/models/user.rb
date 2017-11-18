class User < ApplicationRecord
 has_secure_password

 def email=(value)
 	#this is for eventhough if we type our email in caps but it will take it as small
 	value = value.strip.downcase
 	write_attribute :email, value
 end

end
