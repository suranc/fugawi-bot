# Description:
#   Basic scripts that listen for a prompt and return an associated static message

module.exports = (robot) ->

  robot.hear /open the/gim, (res) ->
    res.send " > I'm sorry, Dave. I'm afraid I can't do that."

  robot.hear /grumpy/gim, (res) ->
    res.send "You gotta pay the G r u m p y Troll toll"

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
    robot.adapter.client.web.chat.postMessage(res.message.room, "http://i.mangler.cyou/bing.gif?"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

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
 
  robot.hear /(^\s*|\s+)time(\s*$|\s+|\.|\!)/gim, (res) ->
    # Date object for getting current time
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/Aq5VEn1.gif"+time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})
  
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
    res.send "http://lumberg.mangler.cyou/?" + "line=" + encodeURIComponent(res.match[2])

  # You're The Richardson Now Dawg
  robot.hear /^\s*(!ytrnd)\s*([^|]+)\|(.*)/i, (res) ->
    res.send "http://tsr.mangler.cyou/?" + "line1=" + encodeURIComponent(res.match[2]) + "&line2=" + encodeURIComponent(res.match[3])
  
  robot.hear /(^\s*|\s+)son(\s*$|\s+|\.|\!)/gim, (res) ->
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

  robot.hear /(dave'?s\s*mo(m|ther))|(anal(ysis|ize)?)/gim, (res) ->
    time = new Date
    robot.adapter.client.web.chat.postMessage(res.message.room, "https://i.imgur.com/UKOmuJn.jpeg" + time.getMinutes() + time.getSeconds(), {as_user: true, unfurl_media: true})

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

  robot.hear /(!img)(.*)/gim, (res) ->
    data = JSON.stringify({
      prompt: `${res.match[2]}`,
      n: 1,
      size: '1024x1024'
    })
    robot.http("https://api.openai.com/v1/images/generations")
      .header('Content-Type', 'application/json')
      .header('Authorization', process.env.OPENAI_API_KEY)
      .get() (err, response, body) ->
        image_data = = JSON.parse(body)
        res.send(image_data.data[0].url)
