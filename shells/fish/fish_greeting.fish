function fish_greeting
    if not set -q fish_greeting
        set -l line1 (_ 'L i f e   -   s t u c k   i n   a   l o o p . . .')
        set -g fish_greeting "$line1"
    end

    if set -q fish_private_mode
        set -l line (_ "W h o   a r e   y o u   h i d i n g   f r o m ?")
        if set -q fish_greeting[1]
            set -g fish_greeting $fish_greeting\n$line
        else
            set -g fish_greeting $line
        end
    end

    # The greeting used to be skipped when fish_greeting was empty (not just undefined)
    # Keep it that way to not print superfluous newlines on old configuration
    test -n "$fish_greeting"
    and echo $fish_greeting
end
