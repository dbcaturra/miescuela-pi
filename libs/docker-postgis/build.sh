#!/usr/bin/env bash
docker build -t dbcaturra/postgres:manual-build .
docker build -t dbcaturra/postgres:11.0-2.5 .
