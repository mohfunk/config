# Format Each Line
function fmt_ln() {
    cat $1 | sed = $1 | sed 'N;s/\n/ /' | sed 's/#.*//g' | sed '/^\s*$/d'
}
# Echo Formated Lines
function pins_echo() {
    local fmtd=$(fmt_ln "$PIN_FILE")
    echo -e "$fmtd" | sed '/^\s*$/d'
}
# Main
function pin {
    local wd="$(pwd)"
    if [ ! -e "$PIN_FILE" ]; then
        echo "Pin file doesnt exists, creat one"
    else
        echo $wd >> $PIN_FILE
    fi
}
# Change to pined directory
function pcd {
    local dir=$(pins_echo | fzf )
    if [[ $1 == 'r' ]]; then
        echo "removed $dir from pins"
    else
        cd "$dir"
    fi
}

