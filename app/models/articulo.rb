class Articulo < ApplicationRecord
has_one_attached :image
validates :titulo, presence: true
validates :body, presence: true, length: { minimum: 10 }

#mostrar ultimo de primero
default_scope {order(created_at: :desc)}
paginates_per 6
end
