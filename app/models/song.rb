class Song < ApplicationRecord
    validates :title, :artist_name, presence:true
    validates :title, :artist_name, uniqueness: {scope: :release_year}
    validates :release_year, presence:true, if: :released?
    validate :release_yr_validation
    
    def release_yr_validation
        if  release_year.present? && release_year > Time.now.year
            errors.add(:release_year, "release year can't be in the future")
        end
    end
     

end
