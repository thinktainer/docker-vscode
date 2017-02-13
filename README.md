# fsharp in docker
installs vscode in container for debugging needs

important to set `xhost +local:thinktainer` in order for the container to be
allowed access to the x11 socket.

run with 
	docker run -ti --rm --name fsharp \
	-v $PWD/vscode:/home/thinktainer/.vscode \
	-v $PWD/app:/home/thinktainer/app \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY thinktainer/fsharp
