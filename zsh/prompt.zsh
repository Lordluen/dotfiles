if [[ "$(tput colors)" == "256" ]]; then
    fg[red]=$FG[124]
    fg[blue]=$FG[033]
    fg[yellow]=$FG[190]
else
    echo 'colorblind'
fi

PROMPT="%m%{$fg[yellow]%}❯%f%n%{$fg[yellow]%}❯%f%1d%{$fg[yellow]%}❯❯%f "
