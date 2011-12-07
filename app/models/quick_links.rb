class QuickLinks < Noodall::Component
  key :title, String

  many :quick_links
end

class QuickLink
  include MongoMapper::EmbeddedDocument

  key :link_text, String
  key :link, String
end