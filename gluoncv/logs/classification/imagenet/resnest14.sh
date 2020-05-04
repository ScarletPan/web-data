horovodrun -np 8 -H localhost:8 python train_horovod.py  --rec-train /home/ubuntu/data/ILSVRC2012/train.rec  --rec-val /home/ubuntu/data/ILSVRC2012/val.rec  --model resnest14 --lr 0.05 --num-epochs 270 --batch-size 128  --use-rec --dtype float32 --warmup-epochs 5 --last-gamma --no-wd --label-smoothing --mixup  --save-dir params_resnest14  --log-interval 100 --eval-frequency 5 --auto_aug --input-size 224 --data-nthreads 10