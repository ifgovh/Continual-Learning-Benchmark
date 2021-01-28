#!/bin/bash
#SBATCH -p IGIcuda1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:GTX1080Ti:1
#SBATCH --time=12:00:00
#SBATCH --mem=12G
#SBATCH --mail-user=guozhang.chen@tugraz.at
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --error=JobName.%J.err
#SBATCH --output=JobName.%J.out

cd $SLURM_SUBMIT_DIR

source /calc/guozhang/anaconda3/etc/profile.d/conda.sh

conda activate base

sh ./scripts/split_MNIST_incremental_class_Madam.sh 0