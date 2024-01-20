python gen_model_answer.py \
    --model-path /datadrive1/ken/.cache/huggingface/hub/models--meta-llama--Llama-2-7b-hf/snapshots/8cca527612d856d7d32bd94f8103728d614eb852 \
    --model-id llama2_7b \

python gen_judgment.py \
    --model-list \
        llama2_7b \
    --parallel 3 \
    --judge-model gpt-4

python show_result.py \
    --model-list \
        llama2_7b \
        llama2_chat_7b \
        finetune_llama2_chat_7b \
        finetune_llama2_chat_7b_FFNet \
        finetune_llama2_chat_7b_Attention