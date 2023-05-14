#!/bin/bash
#SBATCH --job-name=V100_4GPU
#SBATCH --partition=v100
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:4
#SBATCH --output=%x.result
#SBATCH --mem=96GB
#SBATCH --time=3:00:00

module load python/intel/3.8.6
module load anaconda3/2020.07
module load cuda/11.6.2
module load cudnn/8.6.0.163-cuda11

/scratch/kv2154/HPML-PokeGans-main/
eval "$(conda shell.bash hook)"
conda activate ../../env/

python3 -m pip install torch torchvision

nvidia-smi
lscpu
lshw
nvidia-smi --query-gpu=memory.total,memory.used,memory.free,utilization.gpu,utilization.memory,temperature.gpu,power.draw,power.limit,gpu_name,gpu_bus_id,compute_mode,fan.speed,pstate,clocks.current.graphics,clocks.current.memory,uuid --format=csv -l 1 > V100_4GPU.csv &
NVIDIA_SMI_PID=$!

python3 pokegan.py
kill $NVIDIA_SMI_PID
