python train_importance.py \
    --name importance \
    --num_classes 23 \
    --backbone resnet101 \
    --num_threads 4 \
    --album_clip_length 32 \
    --seed 2021 \
    --train_root ../CUFED_split/images/train \
    --val_root ../CUFED_split/images/test \
    --train_list filenames/train_multi.txt \
    --val_list filenames/test.txt \
    --batch_size 96 \
    --save_dir '/content/drive2/checkpoints' \
    --max_epoch 150 \
    --optimizer adamw \
    --lr 2e-4 \
    --weight_decay 1e-4 \
    --lr_policy onecycle \
    --lr_milestones 30 50 70 90 100 110 \
    --lr_gamma 0.5 \
    --patience 30 \
    --loss asymmetric \
    --gpus -1 \
    --accelerator ddp