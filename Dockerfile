FROM ouvocl/vce-scipy

USER root
RUN apt-get update && apt-get install -y libopenblas-dev liblapack-dev 
RUN pip install --upgrade --no-cache-dir nb-extension-empinken
RUN pip install --no-cache-dir tensorflow tensorflow-datasets
USER $NB_USER
