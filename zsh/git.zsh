### Functions


# Cloning Repos
function gi {
    local cmd="git"
    local ssh="git@github.com:"
    if [[ $1 == "c" ]] then
        cmd="$cmd clone $ssh"

        if [[ $3 == "" ]] then
            cmd+="mohfunk/$2.git"
        else
            cmd+="$2/$3.git"
        fi
    elif [[ $1 == "a" ]] then
        cmd="$cmd remote add origin  $ssh"
        cmd+="mohfunk/$2.git"
    else 
        cmd="$cmd init"
    fi

    eval $cmd
}

# add + commit
function gic {
    git add .; git commit -m $1
}

# add + commit + push
function gip {
    git add .; git commit -m $1; git push
}

function gig() { curl -L -s https://www.gitignore.io/api/$@ ;}
