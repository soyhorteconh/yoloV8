# yoloV8
Docker environment to test yolov8 models to detect dishwashers, glasses, pots, etc.

## How to use the environment? ##
1. Build dockerfile
   ```
   docker build -t dockerfile .
   ```
2. Build image from dockerfile
   ```
   ./buil.sh
   ```
3. Run container
   ```
   ./launch_bash.sh
   ```

## How to generate datasets? ##
[Roboflow](https://roboflow.com/universe) was used to generate the dataset with images from other datasets, but also this dataset was improved with images from specific objects which were used for the experiments.
- [Dataset](https://universe.roboflow.com/dishwasher-20/dishwashe2.0/dataset/2)


