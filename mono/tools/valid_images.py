from PIL import Image 
from PIL import ImageChops
def compare_validation_images(img1 :str, img2:str, result_folder:str):
    image_1=Image.open(img1)
    image_2=Image.open(img2)

    result=ImageChops.difference(image_1, image_2)

    result.save(result_folder)