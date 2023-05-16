#!/bin/bash
#SBATCH --job-name=AEGAN_PokeGAN_RTX8000_20000_Epochs
#SBATCH --partition=rtx8000
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:1
#SBATCH --output=%x.result
#SBATCH --mem=128GB
#SBATCH --time=24:00:00

module load python/intel/3.8.6
module load anaconda3/2020.07
module load cuda/11.6.2
module load cudnn/8.6.0.163-cuda11

/scratch/kv2154/HPML-PokeGans-main/
eval "$(conda shell.bash hook)"
conda activate ../../env/

python3 -m pip install torch torchvision torchaudio certifi cycler future kiwisolver matplotlib pyparsing python-dateutil six typing-extensions

nvidia-smi
lscpu
lshw
nvidia-smi --query-gpu=memory.total,memory.used,memory.free,utilization.gpu,utilization.memory,temperature.gpu,power.draw,power.limit,gpu_name,gpu_bus_id,compute_mode,fan.speed,pstate,clocks.current.graphics,clocks.current.memory,uuid --format=csv -l 1 > AEGAN_PokeGAN_RTX8000 _20000_Epochs.csv &
NVIDIA_SMI_PID=$!

python3 main.py
kill $NVIDIA_SMI_PID
