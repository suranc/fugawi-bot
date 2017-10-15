# Description:
#   Basic scripts that listen for a prompt and return an associated static message

# Date object for getting current time
time = new Date

module.exports = (robot) ->

  robot.hear /open the/gim, (res) ->
    res.send " > I'm sorry, Dave. I'm afraid I can't do that."

  robot.hear /it is what it is/gim, (res) ->
    res.send " > At the end of the day."

  robot.hear /sp(a|i)toon/gim, (res) ->
    res.send " > If I pick up a can and it's got spit in it, I'm not gonna say a word.  I'll go get in my kudober, drive to my house, grab my shotgun, and BLOW YOUR MOTHER FUCKING HEAD OFF!"

  robot.hear /problem/gim, (res) ->
    res.send " > I believe you mean, Opportunity."

  robot.hear /upset/gim, (res) ->
    res.send " > I believe you mean, peptomistic."

  robot.hear /peptomis(m|tic)/gim, (res) ->
    pepto = res.match[0]
    res.send "#{pepto}?  What does that even mean?\n > Uhhhhhhhhhhhhh..... Upset."

  robot.hear /!wink/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/RD8fp5e.png?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /stuck/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "hhttps://i.imgur.com/BLnJWJ0.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /matt/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/OCUDGLX.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /fast/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/xN2P433.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /kha+n/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/SEaiRlG.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /richardson/gim, (res) ->
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/fPqnkvC.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})


  robot.hear /mmenu/gim, (res) ->
    robot.http("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3747&pageid=20&stationID=-1").get() (err, response, body) ->
      monday = "<h1>Monday</h1>.*<?xml version=\"1.0\" encoding=\"utf-16\"?>.*\n"
      # pattern = ///
      #   ^\(?(\d{3})\)? # Capture area code, ignore optional parens
      #   [-\s]?(\d{3})  # Capture prefix, ignore optional dash or space
      #   -?(\d{4})      # Capture line-number, ignore optional dash
      # ///
      # [area_code, prefix, line] = "(555)123-4567".match(pattern)[1..3]
      pattern = ///
    #    <h1>Monday</h1>
    #    \s+
#        (<\?xml\x20version=\"1.0\"\x20encoding=\"utf-16\"\?>)
#        (<\?xml\x20version=\"1.0\"\s+encoding=\"utf-16\"\?>)
#        (.+)
#      ^  (<\?xml\x20version=\"1.0\"\x20encoding=\"utf-16\"\?>)
        (Guest\s+Restaurant:\s+[^<]+).*
        (Guest\s+Restaurant:\s+[^<]+).*
        (Guest\s+Restaurant:\s+[^<]+).*
        (Guest\s+Restaurant:\s+[^<]+)
      ///gm
      mondaytext = body.match(pattern)#[1]#[0]#[3]
      console.dir mondaytext[3]
      # => ['555', '123', '4567']
      #result = monday.exec(body)
      #console.log result

      #res.send "response = #{response}\nbody = #{body}"
##      {parseString} = require 'xml2js'
##      xml = body #"#{body}"
##      parseString xml, (err2, result) ->
        #res.send result
        #res.send xml
##        console.dir result
        #console.dir body
#      {parseString} = require 'xml2js'
#      xml = "<root>Hello xml2js!</root>"
#      parseString xml, (err2, result) ->
#          console.dir response.res