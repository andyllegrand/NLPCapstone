# E0
# Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=64 --encoder_depth=1 --encoder_bidirectional=false --optical_flow=true --only_optical_flow=true --weighted_loss=false --classes=io *>&1 |  Write-Host } 6>&1 | Tee-Object e0.out

# Single encoder layer
Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=1 --encoder_bidirectional=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e1.out
# Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=1 --encoder_bidirectional=true --pose_components POSE_LANDMARKS LEFT_HAND_LANDMARKS RIGHT_HAND_LANDMARKS FACE_LANDMARKS --pose_reduce_face=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e2.out
# Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=1 --encoder_bidirectional=true --optical_flow=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e3.out
# Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=1 --encoder_bidirectional=true --optical_flow=true --hand_normalization=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e4.out

# 4 encoder layers
Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=4 --encoder_bidirectional=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e1s.out
Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=4 --encoder_bidirectional=true --pose_components POSE_LANDMARKS LEFT_HAND_LANDMARKS RIGHT_HAND_LANDMARKS FACE_LANDMARKS --pose_reduce_face=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e2s.out
Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=4 --encoder_bidirectional=true --optical_flow=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e3s.out
Measure-Command { python -m sign_language_segmentation.src.train --dataset=dgs_corpus --pose=holistic --fps=25 --hidden_dim=256 --encoder_depth=4 --encoder_bidirectional=true --optical_flow=true --hand_normalization=true --data_dir . --no_wandb=true *>&1 |  Write-Host } 6>&1 | Tee-Object e4s.out
