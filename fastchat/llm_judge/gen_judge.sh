python gen_model_answer.py \
    --model-path /datadrive1/finetuned_models/finetune_llama2_chat_7b_Attention/checkpoint.0 \
    --model-id finetune_llama2_chat_7b_Attention \
    # --num-gpus-total 4

python gen_judgment.py \
    --model-list \
        finetune_llama2_chat_7b_Attention \
    --parallel 3 \
    --judge-model gpt-4

python show_result.py \
    --model-list \
        llama2_chat_7b \
        finetune_llama2_chat_7b \
        finetune_llama2_chat_7b_FFNet \
        finetune_llama2_chat_7b_Attention