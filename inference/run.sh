./asr.sh --lang en --ngpu 1 --nj 16 --gpu_inference true --inference_nj 2 --nbpe 5000 --max_wav_duration 30 --speed_perturb_factors '0.9 1.0 1.1' --audio_format flac.ark --feats_type raw --use_lm false --asr_config conf/train_asr.yaml --inference_config conf/decode_asr.yaml --train_set train_clean_100 --valid_set dev --test_sets 'test_clean test_other dev_clean dev_other' --lm_train_text data/train_clean_100/text --bpe_train_text data/train_clean_100/text --stage 12 --stop-stage 13 --ngpu 1 --nj 8 --inference_nj 8 --stage 12 "$@"; exit $?