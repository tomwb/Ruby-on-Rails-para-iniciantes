class Father < ActiveRecord::Base
	has_many :children
	belongs_to :occupation

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def occupation_description
		if self.occupation.blank?
			"-"
		else
			self.occupation.description
		end	
	end
end
