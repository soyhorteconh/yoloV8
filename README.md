# yoloV8
Docker environment to test yolov8 models to detect dishwashers, glasses, pots, etc.

## How to use the environment? ##
1. Build dockerfile (only once)
   ```
   docker build -t dockerfile .
   ```
2. Build image from dockerfile (only once)
   ```
   ./buil.sh
   ```
3. Run container (each time you'll use the container)
   ```
   ./launch_bash.sh
   ```
### How to run the experiment? ###
```
cd /root/yolov8
python3 test1.py
```

## How to generate datasets models? ##
[Roboflow](https://roboflow.com/universe) is platform very useful to create datasets, it'll allow you to upload images, videos to separete in different frames, and also you can make the labeling of images for each object that you want to detect.
Fot this experiment Rboflow was used to generate the dataset with images from other datasets, but also this dataset was improved with images from specific objects which were used for the experiments.

- [Dataset](https://universe.roboflow.com/dishwasher-20/dishwashe2.0/dataset/2)

## How to use this dataset? ##
1. Select the format of the dataset, in the case of this experiment "YOLOv8" format was used.
2. Select the format to download the dataset, the option "show download code" is better.
3. Code like this one will appear
   ```
   !pip install roboflow

   from roboflow import Roboflow
   rf = Roboflow(api_key="z5YM9mE6n1LKea0KWNgF")
   project = rf.workspace("dishwasher-20").project("dishwashe2.0")
   dataset = project.version(2).download("yolov8")
   ```
   This code will allow you to download only the dataset.

## How to train the model? ##
For this you can use the resources of you computer, but also you can use a notebook of google colab (which is easier in the case of your computer doesn't have the requirements), also in the case of this experiment this was made using google colab.


Google colab available [here](https://colab.research.google.com/drive/1Mu9HaywSiQ-tBqoxkx9v5uMfhu1692H5?usp=sharing).

For more information the original notebook is available [here](https://colab.research.google.com/github/roboflow-ai/notebooks/blob/main/notebooks/train-yolov8-object-detection-on-custom-dataset.ipynb).


