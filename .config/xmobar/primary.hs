    -- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:DaddyTimeMono Nerd Font:weight=light:pixelsize=16:antialias=true:hinting=true",
    bgColor = "#292d3e",
    fgColor = "#f07178",
    alpha = 90,
    position = Static { xpos = 300 , ypos = 5, width = 1324, height = 24 },
    --position = TopW C 90,
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = True,
    persistent = True,
    commands = [ 
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Com "volume" [] "volume" 10,
        Run Com "battery" [] "battery" 600,
        Run Com "brightness" [] "brightness" 10,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run Com "/home/javier/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 600,
       -- Run Com "/home/antonio/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 600,
        Run UnsafeStdinReader
    ],
    alignSep = "}{",
    template = "<fc=#48B20F>   </fc>%UnsafeStdinReader% }{ \
        \<fc=#e1acff> %updates% </fc>\
        \<fc=#FFB86C> %brightness%</fc>\
        \<fc=#c3e88d> %battery%</fc>\
        \<fc=#82AAFF> %volume% </fc>\
        \<fc=#8BE9FD> %date% </fc>\
        \%trayerpad%"
}
