FROM --platform=linux/amd64 ubuntu
RUN apt update && apt -y install maven wget gcc zlib1g-dev tar && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.0/graalvm-ce-java17-linux-amd64-22.3.0.tar.gz
RUN tar -xvf graalvm-ce-java17-linux-amd64-22.3.0.tar.gz
RUN rm graalvm-ce-java17-linux-amd64-22.3.0.tar.gz
ENV PATH=/graalvm-ce-java17-22.3.0/bin:$PATH
ENV JAVA_HOME=/graalvm-ce-java17-22.3.0