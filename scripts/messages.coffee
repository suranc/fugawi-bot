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


  # Tech Sergeant Richardsonify
  robot.hear /^\s*(!tsr)(.*)/i, (res) ->
    # Date object for getting current time
    time = new Date
    res.send "> UHHHHHHHHhhhhhhhhhhh... " + res.match[2]
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/fPqnkvC.jpg?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

  # You're The Lumberg Now Dawg
  robot.hear /^\s*(!ytlnd)\s*(.*)/i, (res) ->
    res.send "http://ec2-52-14-242-174.us-east-2.compute.amazonaws.com:8080/?" + "line=" + encodeURIComponent(res.match[2])

  # You're The Richardson Now Dawg
  robot.hear /^\s*(!ytrnd)\s*([^|]+)\|(.*)/i, (res) ->
    res.send "http://ec2-52-14-242-174.us-east-2.compute.amazonaws.com:3000/?" + "line1=" + encodeURIComponent(res.match[2]) + "&line2=" + encodeURIComponent(res.match[3])
  
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
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=4510&pageid=20&menuid=16544&stationID=1938", "Front Street: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3887&pageid=20&menuid=11454&stationID=1721", "Plaza 2: \n", res)
    send_aramark_guests_style1("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3971&pageid=20&stationID=-1", "10 West: \n", res)
    send_aramark_guests_style2("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3746&pageid=20&stationID=1751", "Marconi: \n", res)
    send_aramark_guests_style1("http://aramarkcafe.com/layouts/canary_2015/locationhome.aspx?locationid=3748&pageid=20&stationID=-1", "Tuttle: \n", res)
    

  send_planes_in_air =(planes, res) ->
    plane_loc_url = "https://public-api.adsbexchange.com/VirtualRadar/AircraftList.json"
    robot.http(plane_loc_url).get() (err, response, body) ->
      res.send("------------------BEFORE---------------------")
      #res.send body
      dataa = JSON.parse(body)
      for plane in dataa.acList
        if plane.Icao in planes
          res.send(plane.Icao + " is in the air")
        #res.send(plane.Icao)
      #res.send(dataa.acList[0].Id)
      #test1 = body.split("{")
      #res.send(test1[1])
      res.send("------------------AFTER---------------------")
      #s = new Set
      #s.add {a: 1}
      #for plane in planes
      # if "plane3" in planes
      #   res.send("yes")
      # else
      #   res.send("no")

    
    
    #res.send("is here")
    #res.send planes
    #for plane in planes
      #res.send plane
      

    # robot.http(url).get() (err, response, body) ->
    #   message = "" + intro
    #   split_data = body.split('Column" class="foodMenuDayColumn">')
    #   days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

    #   # Easy workaround to accomidate aramark's bullshit
    #   split_data_temp = split_data[1].split('Column"  class="foodMenuDayColumn">')
    #   split_data2 = []
    #   split_data2[0] = split_data_temp[0]
    #   split_data2[1] = split_data_temp[1]
    #   split_data2[2] = split_data[2]
    #   split_data2[3] = split_data[3]
    #   split_data2[4] = split_data[4]

    #   for day in [0...5]# by 1
    #     guestpattern = ///

  robot.hear /zeplane/gim, (res) ->
    send_planes_in_air(["A2E566","A70362","A70AD0","A715F5","A719AC","A71D63","A03815","A05216","A11791","A13F10","A1668F","A34B45","A67108","A7C34A","A996CB","A97A71","A9C96F"], res)
    #send_planes_in_air(["C05EFC","8A0382","3C5467","7812DF","485207","8A03B3","AC52EC","ACC61E","407131","E0820B","AA8740","781172","76CF26","7812EC","A82E29","AA4A90","86CF5A","471F8B","AA9A57","A33A78","A57F50","780A4C","780F49","E80323","899160","A2E566","A70362","A70AD0","A715F5","A719AC","A71D63","A03815","A05216","A11791","A13F10","A1668F","A34B45","A67108","A7C34A","A996CB","A97A71","A9C96F"], res)
