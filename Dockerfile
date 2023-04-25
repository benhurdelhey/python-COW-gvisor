FROM ubuntu:20.04 as build

RUN apt-get update \
  && apt-get install -y software-properties-common && add-apt-repository -y "ppa:deadsnakes/ppa" \
  && apt-get install -y curl \
  && apt-get install -y python3.10 python3.10-distutil

RUN curl -O -sSL https://bootstrap.pypa.io/get-pip.py \
  && python3.10 get-pip.py --no-cache-dir

RUN python3.10 -m pip install --no-compile --no-cache-dir pandas numpy pyarrow scipy scikit-learn


COPY mp.py /mp.py

# RUN pip install pandas
CMD ["python3.10", "/mp.py"]