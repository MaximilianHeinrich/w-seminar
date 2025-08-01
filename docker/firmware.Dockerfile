FROM espressif/idf:latest

COPY ./hardware/qrng/firmware /workspace
WORKDIR /workspace

CMD ["idf.py", "build"]
