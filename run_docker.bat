docker rm depth_estimation
docker run -v %~dp0docker_output:"/Metric3D/show_dirs" -v %~dp0docker_input:"/Metric3D/data/custom_data" --name depth_estimation --gpus all -d -i -t "depth_estimation" bash 
docker exec depth_estimation ls
docker exec depth_estimation python ./mono/tools/test_scale_cano.py     mono/configs/HourglassDecoder/vit.raft5.small.py  --load-from weight/metric_depth_vit_small_800k.pth     --test_data_path ./data/custom_data     --launcher None
docker stop depth_estimation
pause 