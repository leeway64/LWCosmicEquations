# Multi-stage builds

# Add metadata to image with LABEL
LABEL version="1.0.0"
LABEL description="Drake Equation calculator"

FROM python:3 AS setup

# Set working directory to /usr/local
WORKDIR /usr/local

# Copy all files in lib directory from current local directory to working directory in the container
COPY lib/ ./


FROM bash:4.4 AS run

# Set working directory to /usr/local
WORKDIR /usr/local

# Copy the contents of the working directory of the setup base to the working directory of the
# run base
COPY --from=setup /usr/local ./

ARG R*
ARG fp
ARG ne
ARG fl
ARG fi
ARG fc
ARG L

# Run container as executable
ENTRYPOINT bash drake-equation.sh $R* $fp $ne $fl $fi $fc $L
