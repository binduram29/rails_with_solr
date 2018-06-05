class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	# solr
    searchable do
      text :name, :description
      time    :created_at

    end
end
