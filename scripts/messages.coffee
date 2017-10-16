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

  send_aramark_guests2 =(url, intro, res) ->
    robot.http(url).get() (err, response, body) ->
      message = "" + intro
      split_data = body.split('Column" class="foodMenuDayColumn">')
      days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

      # Easy workaround to accomidate aramark's bullshit
      split_data_temp = split_data[1].split('Column"  class="foodMenuDayColumn">')
      split_data2 = []
      split_data2[0] = split_data_temp[0]
      split_data2[1] = split_data_temp[1]
      split_data2[2] = split_data[2]
      split_data2[3] = split_data[3]
      split_data2[4] = split_data[4]


      # for numa in [0...5]
      #   console.log "NUMBA " + numa
      #   console.log split_data2[numa]

      for day in [0...5]# by 1
        guestpattern = ///
          (<div\sclass=\"noNutritionalLink\">[A-Za-z\s\.]+)
        ///gmi
        guestmatch = split_data2[day].match(guestpattern)
        message = message + " >  " + days[day] + ":"
        try
          firstrun = true
          for i in guestmatch
            console.log i
            restaurantname = i.match(/(<div\sclass=\"noNutritionalLink\">)\s*([^<\n\r]+)[\s\r\n]*/)[2]
            if firstrun != true
              message = message + ", " + restaurantname
            else
              message = message + " " + restaurantname
              firstrun = false
        message = message + "\n"
      res.send message

  robot.hear /mmenu/gim, (res) ->
    #send_aramark_guests("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3747&pageid=20&stationID=-1", "Plaza 1: \n", res)
    #send_aramark_guests2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3743&pageid=20&stationID=-1", "Plaza 3: \n", res)
    send_aramark_guests2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3743&pageid=20&menuid=10510&stationID=1723", "Plaza 3: \n", res)