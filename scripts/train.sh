python train.py \
--name event_cnnlstm \
--num_classes 23 \
--backbone resnet101 \
--num_threads 4 \
--seed 2021 \
--train_root ../CUFED/images \
--train_list filenames/train_multi.txt \
--val_list filenames/test.txt \
--batch_size 3 \
--save_dir checkpoints \
--max_epoch 80 \
--optimizer adam \
--lr 1e-4 \
--weight_decay 1e-4 \
--lr_policy onecycle \
--lr_milestones 30 50 70 90 100 110 \
--lr_gamma 0.5 \
--patience 20 \
--loss asymmetric focal \
--gpus -1 \
--accelerator ddp