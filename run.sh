#!/bin/sh

python main.py --mode=download_data # download data from poloniex 
python main.py --mode=generate --repeat=1 # generate n models with initial random seed=1,2,3...,n
python main.py --mode=train --processes=1 # train models in train_package with m processes, m should <= n
python main.py --mode=backtest --algo=1 # backtest with model 1
python main.py --mode=table --format=csv --algos=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 --labels=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 # generate the metrics table for 20 models in train_package
python main.py --mode=plot --algos=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 --labels=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 # generate the NAV plot for 20 models in train_package
