cask 'datagrip' do
  version '2016.1.1'
  sha256 '78976fcf73155e3e4b0f0defae550ddf7af6517d656d199e53f7f10dd89e02fb'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'
  license :commercial

  app 'DataGrip.app'

  zap delete: [
                "~/.DataGrip#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.DataGrip.plist',
                "~/Library/Preferences/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Application Support/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Caches/DataGrip#{version.major_minor.no_dots}",
                "~/Library/Logs/DataGrip#{version.major_minor.no_dots}",
              ]
end
