from ultralytics import YOLO

# run model with a video
model = YOLO('/root/yolov8/model3.pt')
results = model.track(source="/root/yolov8/dishwasher3.mp4",  save=True)
results.save()

