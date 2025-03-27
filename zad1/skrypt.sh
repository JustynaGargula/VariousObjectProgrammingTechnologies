#!/bin/bash
docker build -t pascal_image .
docker run -v .:/app pascal_image sh -c "fpc /app/pr1.pas && sleep 2 && /app/pr1"