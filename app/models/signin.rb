class Signin < ApplicationRecord
    def self.search(search)
        if search
            where(["created_at LIKE ?", "%#{search}%"])
            else
              Signin.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
            end
end
end
