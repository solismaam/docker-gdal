FROM debian:sid-slim

WORKDIR /share

RUN apt-get update && apt-get install gdal-bin -y && rm -rf /var/lib/apt/lists/*

CMD ["gdalinfo", "--version"]
