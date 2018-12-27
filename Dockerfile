FROM python:3.7-slim

RUN apt update && \
    apt install -y \
    build-essential \
    libltdl7 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install cwltool

CMD ["tail", "-f", "/dev/null"]
