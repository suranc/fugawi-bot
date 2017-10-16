# Description:
#   Basic scripts that listen for a prompt and return an associated static message

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
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/RD8fp5e.png?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /stuck/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "hhttps://i.imgur.com/BLnJWJ0.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /matt/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/OCUDGLX.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /fast/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/xN2P433.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /kha+n/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/SEaiRlG.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /richardson/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/fPqnkvC.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})


  send_aramark_guests =(url, intro, res) ->
    robot.http(url).get() (err, response, body) ->
      message = "" + intro
      pattern = ///
        (<\?xml\x20version=\"1.0\"\s+encoding=\"utf-16\"\?>[^\n]+)
      ///gmi
      xmltext = body.match(pattern)
      days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

      for day in [0...5] by 1
        guestpattern = ///
          (Guest\s+Restaurant:?\s*[^<]+)
        ///gmi
        guestmatch = xmltext[day].match(guestpattern)
        message = message + " >  " + days[day] + ":"
        try
          firstrun = true
          for i in guestmatch
            restaurantname = i.match(/(Guest\s+Restaurant:?\s*)([^<]+)\s*/)[2]
            if firstrun != true
              message = message + ", " + restaurantname
            else
              message = message + " " + restaurantname
              firstrun = false
        message = message + "\n"
      res.send message

  robot.hear /mmenu/gim, (res) ->
    send_aramark_guests("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3747&pageid=20&stationID=-1", "Plaza 1: \n", res)
    send_aramark_guests("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3743&pageid=20&stationID=-1", "Plaza 3: \n", res)