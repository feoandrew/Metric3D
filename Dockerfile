FROM python
LABEL version="1.0"

RUN mkdir ./Metric3D && mkdir ./Metric3D/show_dirs
WORKDIR /Metric3D
RUN apt update && apt-get install -y libgl1 libglib2.0-0 libsm6 libxrender1 libxext6

COPY ./data ./data
COPY ./data_info ./data_info
COPY ./mono ./mono
COPY ./training ./training
COPY ./weight ./weight
COPY ./test_kitti.sh ./test_kitti.sh
COPY ./test_nyu.sh ./test_nyu.sh
COPY ./test_vit.sh ./test_vit.sh
COPY ./test.sh ./test.sh
COPY ./requirements_v1.txt ./requirements_v1.txt


RUN pip install -r requirements_v1.txt
RUN pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu118/torch2.1.0/index.html


CMD [ "ls" ]