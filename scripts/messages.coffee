# Description:
#   Basic scripts that listen for a prompt and return an associated static message

module.exports = (robot) ->

  robot.hear /open the/gim, (res) ->
    res.send " > I'm sorry, Dave. I'm afraid I can't do that."

  robot.hear /it is what it is/gim, (res) ->
    res.send " > At the end of the day."

  robot.hear /sp(a|i)toon/gim, (res) ->
    res.send " > If I pick up a can and it's got spit in it, I'm not gonna say a word.  I'm gonna get in my kudober, drive to my house on Victoria Boulevard, grab my shotgun, drive back and BLOW YOUR MOTHER FUCKING HEAD OFF!"

  robot.hear /problem/gim, (res) ->
    res.send " > I believe you mean, Opportunity."

  robot.hear /upset/gim, (res) ->
    res.send " > I believe you mean, peptomistic."

  robot.hear /peptomis(m|tic)/gim, (res) ->
    pepto = res.match[0]
    res.send "#{pepto}?  What does that even mean?\n > Uhhhhhhhhhhhhh..... Upset."

  robot.hear /phil/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/mjDivAn.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /bing/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "http://mangler.club/i/bing.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /!wink/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/RD8fp5e.png?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /stuck/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/BLnJWJ0.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /peace/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://media.giphy.com/media/26tnnNu7zu9jabiY8/giphy.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})
  
  robot.hear /rules/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://media.giphy.com/media/V12SNTSFMOD4s/giphy.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})
  
  robot.hear /(cold|winter)/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://media.giphy.com/media/RiDZXTqTJSXV6/giphy.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})
 
  robot.hear /matt/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/OCUDGLX.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /fast/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/xN2P433.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /kh+a+n+/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/SEaiRlG.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /richardson/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/fPqnkvC.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /punchy/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/bVt6IN6.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /poetry/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/qSQtz6a.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /pork/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/3NTlsLp.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  # Tech Sergeant Richardsonify
  robot.hear /^\s*(!tsr)(.*)/i, (res) ->
    # Date object for getting current time
    time = new Date
    res.send "> UHHHHHHHHhhhhhhhhhhh... " + res.match[2]
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/fPqnkvC.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  # You're The Lumberg Now Dawg
  robot.hear /^\s*(!ytlnd)\s*(.*)/i, (res) ->
    res.send "http://lumberg.mangler.club/?" + "line=" + encodeURIComponent(res.match[2])

  # You're The Richardson Now Dawg
  robot.hear /^\s*(!ytrnd)\s*([^|]+)\|(.*)/i, (res) ->
    res.send "http://tsr.mangler.club/?" + "line1=" + encodeURIComponent(res.match[2]) + "&line2=" + encodeURIComponent(res.match[3])
  
  robot.hear /(^\s*|\s+)son(\s*$|\s+)/gim, (res) ->
    res.send " > If you were my son, I'd throw you through that fuckin' wall!"

  robot.hear /great( *)job/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/bhrYwFD.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /(go+r+n|woody)/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/zpvDLt9.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /(wait|hold on)/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/16sl1ya.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  robot.hear /MEDIC!/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://youtu.be/u8YQEyrbVpE?t=32", {as_user: true, unfurl_media: true})

  send_aramark_guests_style1 =(url, intro, res) ->
    robot.http(url).get() (err, response, body) ->
      message = "" + intro

      # Remove line breaks, since aramark decides to put those between "Guest Resturant:" and the name
      xmltext = body.replace(/<br>/gi, "");

      # Add ghost day since our string matches array is off by one (could just shift instead)
      days = ["Ghostday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
      xmlarray = xmltext.split('<?xml version="1.0" encoding="utf-16"?>')

      for day in [1...6] by 1
        guestpattern = ///
          (Guest\s+Restaurant:?\s*[^<]+)
        ///gmi
        guestmatch = xmlarray[day].match(guestpattern)
        message = message + " >  " + days[day] + ":"
        try
          firstrun = true
          for i in guestmatch
            restaurantname = i.match(/(Guest\s+Restaurant:?\s*)([^<]+)\s*/)[2].replace(/\s+/g, " ").replace(/ *(Pizza|Lasagna): .*/, "") # Run regex to get guest resturant name on current match, and access second element (the resturant name itself).  Then we need to replace multiple occurences of whitespace with a space (primarily to nuke newlines).  Finally, we add some 10W BS customization to strip everything after "Pizza: 
            if firstrun != true
              message = message + ", " + restaurantname
            else
              message = message + " " + restaurantname
              firstrun = false
        message = message + "\n"
      res.send message


  send_aramark_guests_style2 =(url, intro, res) ->
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

      for day in [0...5]# by 1
        guestpattern = ///
          (<div\sclass=\"noNutritionalLink\">[^<]+)
        ///gmi
        guestmatch = split_data2[day].match(guestpattern)
        message = message + " >  " + days[day] + ":"
        try
          firstrun = true
          for i in guestmatch
            stripguest = i.replace(/\s*Guest\s*Restaurant:?\s*/gi, ""); # Strip off any occurences of Guest Restaurant
            restaurantname = stripguest.match(/(<div\sclass=\"noNutritionalLink\">)\s*([^<\n\r]+)[\s]*/)[2];
            if firstrun != true
              message = message + ", " + restaurantname
            else
              message = message + " " + restaurantname
              firstrun = false
        message = message + "\n"
      res.send message


  robot.hear /!guest/gim, (res) ->
    send_aramark_guests_style1("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3747&pageid=20&stationID=-1", "Plaza 1: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3743&pageid=20&menuid=10510&stationID=1723", "Plaza 3: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=4510&pageid=20&stationID=1938", "Front Street: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3887&pageid=20&menuid=11454&stationID=1721", "Plaza 2: \n", res)
    send_aramark_guests_style1("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3971&pageid=20&stationID=-1", "10 West: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3746&pageid=20&stationID=1751", "Marconi: \n", res)
    

  send_planes_in_air =(planes, res) ->
    plane_loc_url = "https://public-api.adsbexchange.com/VirtualRadar/AircraftList.json"
    robot.http(plane_loc_url).get() (err, response, body) ->
      plane_data = JSON.parse(body)
      found_plane = false
      for plane in plane_data.acList
        if plane.Reg in planes
          found_plane = true
          res.send(plane.Reg + " is underway\nLatitude: " + plane.Lat + "\nLongitude: " + plane.Long + "\nModel: " + plane.Mdl + "\nFlight Info: https://flightaware.com/live/flight/" + plane.Reg + "\n\n")
      if (found_plane == false)
        res.send("No planes in the air")

  robot.hear /zeplane/gim, (res) ->
    send_planes_in_air(["N286MP","N551CP","N553CP","N556CP","N557CP","N558CP","N113HP","N12HP","N17HP","N18HP","N19HP","N311HP","N514HP","N6HP","N717HP","N71HP","N73HP"], res)
