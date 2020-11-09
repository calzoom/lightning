#!/bin/bash
# Job name:
#SBATCH --job-name=lightning
#
# Account:
#SBATCH --account=fc_ntugame
#
# Partition:s
#SBATCH --partition=savio2_gpu
#
# QoS:
#SBATCH --qos=savio_normal
#
# Number of nodes:
#SBATCH --nodes=1
#
# Number of tasks (one for each GPU desired for use case) (example):
#SBATCH --ntasks=1
#
# Processors per task (please always specify the total number of processors twice the number of GPUs):
#SBATCH --cpus-per-task=2
#
#SBATCH --gres=gpu:1
#
# Wall clock limit:
#SBATCH --time=4:00:00
#

# debugging flags (optional)
export NCCL_DEBUG=INFO
export PYTHONFAULTHANDLER=1

python -u main.py >& output.out