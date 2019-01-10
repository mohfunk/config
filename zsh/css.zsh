### Functions

# beautifiy a css file
function bcss {
    NEWFILE=${1%%.min.css}.css
    touch $NEWFILE
    cssbeautify-cli -f $1 >> $NEWFILE
    rm $1
}
# beautifiy css and sassify it
function bsass {
    NEWCSS=${1%%.min.css}.css
    NEWSASS=${1%%.min.css}.sass
    bcss $1
    sass-convert $NEWCSS $NEWSASS
    rm $NEWCSS
}
# minifiy a css file
function ucss {
    NEWFILE=${1%%.css}.min.css
    touch $NEWFILE
    cleancss $1 >> $NEWFILE
    rm $1
}
# convert a sass file to css and minifiy it
function usass {
    NEWFILE=${1%%.sass}.css
    sass $1 $NEWFILE
    ucss $NEWFILE
    if [[ $2 == "" ]] then
        rm ${1%%.sass}.css.map
    fi
    rm $1
}
