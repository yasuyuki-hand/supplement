class Brand < ApplicationRecord

    # ページネーションの表示件数追加

  # 検証
  validates :name, presence: true, length: {maximum: 50}
  validates :content, presence: true

  # 画像アップロード用
  mount_uploader :picture, PictureUploader
end
