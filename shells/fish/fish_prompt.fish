# Kaiya's fish_prompt

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status --background=red white

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)


    # Kaomoji
    set faces "(≧◡≦)" "( ´ ▽ ` )" "(꒪ω꒪υ)" "(＞﹏＜)" "(＃`Д´)" "╮(︶▽︶)╭" "(＠_＠)" "「(°ヘ°)ゞ" "(* ^ ω ^)" "｡ﾟ( ﾟ^∀^ﾟ)ﾟ｡" "°˖✧◝(⁰▿⁰)◜✧˖°" "(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧" "¯\_〳 •̀ o •́ 〵_/¯" "｡+ﾟ.。+。(´ω｀*)♪♪"
    
    # Animals
    # set faces "🐱" "🐶" "🐺" "🦊" "🦝" "🐹" "🔥" "🥀" "💔" "⁉️" "🎷🐛" "💞" "🌼"
    
    # Hearts
    # set faces "❤️" "🧡" "💛" "💚" "💙" "💜" "🤎" "🖤" "🤍"💕" "💞" "💓" "💗" "💖" "❤️‍🔥" "✨"

    # Format
    echo -n -s (set_color $color_user) $faces[(random 1 (count $faces))]' ' (prompt_pwd)' ' $normal (fish_vcs_prompt) $normal " "$prompt_status $suffix " "
end
