class Topic < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Topic.where(['content LIKE ?', "%#{search}%"])
    else
      Topic.all #全て表示。
    end
  end
end
