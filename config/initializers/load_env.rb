env_file = Rails.root.join('.env')
if File.exist?(env_file)
  File.readlines(env_file).each do |line|
    key, value = line.strip.split('=')
    ENV[key] = value if key.present? && value.present?
  end
end
