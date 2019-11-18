class Testcase < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    validates :title, presence: true, length: { minimum: 5 }
end
