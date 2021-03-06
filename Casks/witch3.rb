cask 'witch3' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "https://manytricks.com/download/witch/#{version}"
  else
    version '3.9.9'
    sha256 'e06e524d054fce30aa55f3031c99659e54b9b6d8d86fca20b682b2d6cf97cc8c'
    url "https://manytricks.com/download/witch/3"
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap delete: '~/Library/Preferences/com.manytricks.Witch.plist'
end
