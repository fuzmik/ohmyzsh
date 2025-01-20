alias dcstop='docker stop $(docker ps -a -q)'
alias dcrestart='docker restart $(docker ps -a -q)'
alias dcshell="docker exec -it"
alias dtail='docker logs -tf --tail="50" "$@"'
#alias dcps='docker ps --format "table {{.Names}}\t{{.Size}}\t{{.Status}}\t{{.ID}}" | tail -n +2 | sort'
alias dcps='dc-info'
alias dcdf='docker system df'
#custom function dc-autocompose
function dc-autocompose {
    # Use docker ps to list running containers, pipe the output to fzf for interactive selection
    container_id=$(docker ps --format "{{.Names}}" | fzf)

    # Run docker-autocompose with the selected container ID
    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/red5d/docker-autocompose "$container_id"
}

# custom functions runlike
function dc-runlike {
    # Use docker ps to list running containers, pipe the output to fzf for interactive selection
    container_id=$(docker ps --format "{{.Names}}" | fzf)

    # Run docker-autocompose with the selected container ID
    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock/assaflavie/runlike "$container_id"
}
