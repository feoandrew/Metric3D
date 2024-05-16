from PIL import Image, ImageChops

image_1=Image.open('HYPERLAPSE_0020_merge.jpg')
image_2=Image.open('HYPERLAPSE_0020_validation.jpg')

result=ImageChops.difference(image_1, image_2)
#result.show()

#Вычисляет ограничивающую рамку ненулевых областей на изображении.
#print(result.getbbox()) 

# result.getbbox() в данном случае вернет (0, 0, 888, 666)
result.save('result.jpg')