class Cook < ApplicationRecord
    validates :image, {presence: true}
    validates :name, {presence: true}
    validates :material, {presence: true}
    validates :Process, {presence: true}
    validates :memo, {presence: true}
    validates :score, {presence: true}

    mount_uploader :image, ImageUploader
end
