FROM huggingface/transformers-pytorch-gpu:4.23.1

# Instal basic utilities
RUN apt-get update && \
    apt-get install -y --no-install-recommends nano tmux git wget unzip bzip2 sudo && \
    apt-get clean

COPY ./requirements.txt /requirements.txt
RUN python3 -m pip install -r /requirements.txt
