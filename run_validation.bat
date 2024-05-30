docker rm depth_estimation
docker run -v %~dp0docker_output:"/metric3D/show_dirs" -v %~dp0docker_input/validation:"/metric3D/data/custom_data" --name depth_estimation --gpus all -d -i -t "depth_estimation" bash 
docker exec depth_estimation ls
docker exec depth_estimation python ./mono/tools/test_scale_cano.py     mono/configs/HourglassDecoder/vit.raft5.small.py  --load-from weight/metric_depth_vit_small_800k.pth     --test_data_path ./data/custom_data  --show-dir ./show_dirs/validation --launcher None --valid_dir ./validation
docker stop depth_estimation
start %~dp0docker_output/validation/vis/image_result.jpg
start %~dp0docker_output/validation/vis/image_merge.jpg
start %~dp0/validation/image_validation.jpg
pause 