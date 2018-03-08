#!/bin/sh
srun --pty -t 2:00:00 --gres=gpu:2 -A edu /bin/bash

module load anaconda/2-4.2.0
conda env create -f envPG.yml
source activate PGPortfolio

python main.py --mode=download_data
python main.py --mode=generate --repeat=1
python main.py --mode=train --processes=1 --device=gpu
