# unofficial-tm358-test
Unofficial test of non-GPU Dockerfile for TM358

Get the data from the provided containers:

```
apt-get update & apt-get install -y zip
zip -r data.zip /datasets
# Then download the created file: data.zip
```

To run the container, create a TM358 working directory, unzip the data files (eg by default into a `dataets` child directory), then on the command line, `cd` to it and run something like:

`docker run -v “$PWD/datasets”:/datasets -v “$PWD/notebooks”:/home/jovyan/notebooks -p 8358:888 ousefuldemos/ou-tm358-unofficial:latest`

THen go to `localhost:8358`. The password to get is `letmein`. You can set a different token by using the following parameter in the `docker run` command: ` -e JUPYTER_TOKEN="myNEWpa55w0rd"`
