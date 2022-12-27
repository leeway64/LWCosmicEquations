# Multi-stage builds

FROM python:3 AS setup

# Add metadata to image with LABEL
LABEL version="1.0.0"
LABEL description="Drake Equation calculator"

# Set working directory to /usr/local
WORKDIR /usr/local

# Copy all files in lib directory from current local directory to working directory in the container
COPY lib/ ./


FROM bash AS run

# Set working directory to /usr/local
WORKDIR /usr/local

# Copy the contents of the working directory of the setup base to the working directory of the
# run base
COPY --from=setup /usr/local ./

# I can't use ARG for command-line arguments, because it does not persist to run time
# Run container as executable
ENTRYPOINT ["bash", "drake-equation.sh"]
