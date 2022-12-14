export MODEL_NAME="./stable-diffusion-v1-5"
export INSTANCE_DIR="./instance/dog"
export CLASS_DIR="./class/dog"
export OUTPUT_DIR="./logs/dog_custom"
export CUDA_VISIBLE_DEVICES=7
python train_custom.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --train_text_encoder \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --instance_prompt="a photo of V* dog" \
  --placeholder_token="V*" \
  --initializer_token="dog" \
  --resolution=512 \
  --train_batch_size=8 \
  --use_8bit_adam \
  --gradient_checkpointing \
  --learning_rate=8e-5 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=300 \
  --num_class_images=200 \
  --max_train_steps=300 \
  --save_steps=50 \
  # --with_prior_preservation --prior_loss_weight=1.0 \
  # --class_prompt="a photo of dog" \
  # --class_data_dir=$CLASS_DIR \

