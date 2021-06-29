# launcher
Create a local environment and launch code on a HPC.

## Usage
One needs to define the dependencies in `requirements.txt`.

Launching a script simply entails running the following command
```
./start.sh <script_name.py> <arguments>
```
Launching a script with `sbatch` entails running the following command
```
sbatch ./start.sh <script_name.py> <arguments>
```

The above command will creating a virtual environment and copy your working directory locally and launch your python script
with the given arguments.
