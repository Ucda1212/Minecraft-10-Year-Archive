#> The Minecraft Splash text is tilted at 20 degrees up, fix later. Also switch to uuid.
data merge entity @e[tag=zeronia.splashtext,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f]}}
data merge entity @e[tag=zeronia.splash2,limit=1] {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f]}}
schedule function zeronia:splashtext/up 5