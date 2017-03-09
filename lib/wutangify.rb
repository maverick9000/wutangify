require "wutangify/version"

module Wutangify
  require 'uri'
  require 'net/http'

  def self.unlamify(lame_name)
    return '' if lame_name.nil?
    name = ''
    uri = URI('http://www.mess.be/inickgenwuname.php')
    response = Net::HTTP.post_form(uri, 'realname' => lame_name)
    name_start = response.body.index('<font size=2>')
    name_end = response.body.index('</b></font>')

    if name_start > 0 and name_end > 0
      response_name = response.body[name_start+13..name_end-1]
      name = response_name.gsub(/\n/,'') if response_name.length > 0
    end
    name
  end
end
