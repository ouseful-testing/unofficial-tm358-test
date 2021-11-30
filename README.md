# unofficial-tm358-test
Unofficial test of non-GPU Dockerfile for TM358

Get the data from the provided containers:

```
apt-get update & apt-get install -y zip
zip -r data.zip /datasets
# Then download the created file: data.zip
```

To run the container, create a TM358 working directory, unzip the data files (eg by default into a `datasets` child directory).

With Docker installed, you can pull a prebuilt container using the command line command:

`docker pull ousefuldemos/ou-tm358-unofficial:latest`

You can then launch a container from the Docker Dashboard:

![image](https://user-images.githubusercontent.com/82988/138918816-6bd073bb-83b5-4f5d-88e1-9a6cdcd82dd6.png)

Alternatively, on the command line, `cd` to it and run something like:

`docker run -v “$PWD/datasets”:/datasets -v “$PWD/notebooks”:/home/jovyan/notebooks -p 8358:8888 ousefuldemos/ou-tm358-unofficial:latest`

THen go to `localhost:8358`. The password to get in is `letmein`. You can set a different token by using the following parameter in the `docker run` command: ` -e JUPYTER_TOKEN="myNEWpa55w0rd"`

Note that the Jupyter server will probably fall over if you try to load datasets or tensorflow models with anything less than 4GB of memory allocated to Docker. You can tweak the settings from the Docker Dashboard:

![image](https://user-images.githubusercontent.com/82988/138918247-844a9dd0-3c38-4bad-a303-45c39e4d1ba3.png)

Restart docker and restart your container after making any system level changes to Docker such as the memory allocation.

__NOTE THAT THIS CONTAINER MAKES NO ATTEMPT TO EXPLOIT A LOCAL GPU.__
