# Install dependencies
RUN apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev \
    && rm -rf /var/lib/apt/lists/*

# Download and extract Python using ADD
ADD https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz /tmp/Python-3.10.0.tgz
RUN tar -xzf /tmp/Python-3.10.0.tgz -C /tmp && \
    cd /tmp/Python-3.10.0 && \
    CFLAGS="-Wformat" ./configure --prefix=/usr/local/ --enable-shared && \
    make -j8 && make altinstall && \
    rm -rf /tmp/Python-3.10.0 /tmp/Python-3.10.0.tgz

# Set Python 3.10 as the default Python version
RUN ln -sf /usr/local/bin/python3.10 /usr/local/bin/python3 && \
    ln -sf /usr/local/bin/python3.10 /usr/local/bin/python
ENV PATH="/usr/local/bin:${PATH}"

# Install PyYAML
ADD http://pyyaml.org/download/pyyaml/PyYAML-5.3.1.tar.gz /tmp/PyYAML-5.3.1.tar.gz
RUN tar zxvf /tmp/PyYAML-5.3.1.tar.gz -C /tmp && \
    cd /tmp/PyYAML-5.3.1 \
    && python setup.py --without-libyaml install \
    && rm -rf /tmp/PyYAML-5.3.1 /tmp/PyYAML-5.3.1.tar.gz


# docker build -t my-python-app .

# docker run --rm -it my-python-app /bin/bash

