python mono/tools/test_scale_cano.py \
    'mono/configs/HourglassDecoder/convlarge.0.3_150.py' \
    --load-from ./weight/cmetric_depth_vit_small_800k.pth \
    --test_data_path ./data/100_0761\
    --launcher None