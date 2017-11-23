FROM debian:sid-slim

WORKDIR /share

RUN apt-get update && apt-get install gdal-bin -y --no-install-recommends && rm -rf /var/lib/apt/lists/*

CMD ["gdalinfo", "--version"]
