ValidatesTimeliness.setup do |config|
  # For more info, you can visit - https://github.com/adzap/validates_timeliness
  # Extend ORM/ODMs for full support (:active_record included).
  config.extend_orms = [ :active_record ]
end
