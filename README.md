An easy way to get started with data science, using Docker.  Containers that come preinstalled with ipython notebook and key packages in the scientific stack.

## Getting started

* Run `sh build_container.sh jupyter` (switch `jupyter` for another container to build that one`).
* Run `sudo docker run -d -p 8888:8888 -v ORIGIN_FOLDER:/home/ds/notebooks serviceds/jupyter-implisit`
    * Replace `jupyter-implisit` with the container you want.
    * Replace `ORIGIN_FOLDER` with a folder on your local machine that you want to persist notebooks in.
* Open your browser and start working with IPython notebook.
    * On Linux, the url will be `localhost:8888`. --> this also worked for me on OSX
    * On Windows/OSX, run `docker-machine ip default` (replace `default` with the name of your machine).  Then, you'll be able to access IPython notebook at `CONTAINER_IP:8888`.
* To save a docker image, run `sudo docker save -o ./images/jupyter-implisit.image serviceds/jupyter-implisit`
* To load that image on a new machine, run `sudo docker load -i jupyter-implisit.image`
* To see what images are loaded and available on your machine, run `sudo docker images`
* To see which containers are currently running, run `sudo docker ps`
* To close an open container, run `sudo docker rm -f <container-id>`
