##### Functions


###
# checks file extention before cat, displays images with catimg and md files
# with mdv on macos, mdless on linux
function cat() {
    local fullfilename=$1
    local filename=$(basename "$fullfilename")
    local fname="${filename%.*}"
    local ext="${filename##*.}"
    if [[ $ext == "md" ]] then
        if [[ $OS == "osx" ]] then
            echo "opening $fname with mdv"
            mdv $1
        else 
            echo "opening $fname with mdless"
            mdless $1
        fi
    elif [[ $ext == "png" ]] || [[ $ext == "jpg" ]] then
        catimg $1
    else 
        /bin/cat $1
    fi
}


###
# cd then ls
function cd {
    builtin cd "$@"
    eval "exa --group-directories-first --sort=Name --ignore-glob=\"*.meta\""
}


###
# make a dir and cd into it
function mkcd() {
    mkdir -p $1; cd $1
}


###
# Run a Processing sketch
function prun {
     if [[ $1 != *'/..'* && $1 != *'../'* && $1 != '.'* && $1 != '/'* ]]
     then
          [[ $1 == "" ]] && sketch=`pwd`;
          [[ $1 != "" ]] && sketch=`pwd`"/"`echo $1 | sed 's;/$;;'`;

          processing-java --sketch="$sketch" --output="$sketch/.tmp_output" --run;
          rm -r "$sketch/.tmp_output";
     else
          echo 'ERROR: Please enter the path to your sketch relative to your current location, ".", "..", "~", and full paths will not work with this function';
          echo '       If you are in the sketch folder you want to run it, simply exicute prun with no arguments';
     fi
}


###
# Setup a dir for a Processing Project
function psetup {
     sketch=$1;
     mkdir $sketch; touch $sketch/$sketch.pde; cd $sketch;
}


###
# Copy a file from fr to pwd
function ret {
    local file=""
    if [[ $1 == "-d" ]] then
        file+="$(ls ~/Downloads | fzf )"
        echo $file | xargs -I{} cp -rf ~/Downloads/{} .
    else
        file+="$(ls ~/ws/.conf/fr/$1/ | fzf )"
        echo $file | xargs -I{} cp -rf ~/ws/.conf/fr/$1/{} .
    fi
}


###
# remove directories
function rmd() {

    rm -rf $1

}


###
# creates a .keep file so git doesnt ruin folder structure
function keep() {
    touch .keep
}


###
# tmp command generates folder from templates 
function tmp {
    local cmd="cookiecutter ~/ws/.conf/templates/"
    if [[ $1 == "" ]] then
        cmd="$cmd\$(ls ~/ws/.conf/templates/ | fzf )"
    else
        cmd="$cmd$1"
    fi
    eval $cmd
}


###
# creates a .md directory with css style sheet, and an md file
function down {
    mkdir .md
    cp ~/ws/.conf/fr/md/fonts/* ./.md/
    touch "$1.md"
}


###
# for docs
function note {
    local name="$1"
    touch "$1.md"
    echo "# $name" >> ./$1.md
    name="- [$1]($1.md)"
    echo $name >> ./_sidebar.md
}


###
# color file based on extention
function exaclr() {
    echo "export EXA_COLORS=\"\$EXA_COLORS:*.$1=34;0;01\"" >> ~/ws/.conf/dot/zsh/var.zsh 
}


###
# creates and alias
function ali() {
    echo "alias $1=\"$2\"" >> ~/ws/.conf/dot/zsh/ali.zsh
}
