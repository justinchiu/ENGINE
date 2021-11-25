#!/bin/bash

python generate_cmlm.py \
    PATH_YOUR_OUTPUT/preprocessed_iwslt14/iwslt14deen  --path DE2EN/checkpoint_best.pt  \
    --task translation_self --remove-bpe --max-sentences 20 \
    --decoding-iterations 1  --decoding-strategy mask_predict \
    > LOGS/iwslt-de2en-engine.out

