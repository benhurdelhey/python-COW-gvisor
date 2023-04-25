import time
import multiprocessing as mp
import pandas as pd
import numpy as np
import pyarrow 
import scipy 
import sklearn
from datetime import datetime
import gc

print("startup")

def run_loop():
    print("worker started ")
    time.sleep(100000)

time.sleep(5)

gc.disable()
gc.freeze()
worker = mp.Process(target=run_loop)
worker.start()
worker.join()