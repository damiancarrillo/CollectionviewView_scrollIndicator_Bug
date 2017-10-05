# CollectionviewView_scrollIndicator_Bug

UICollectionview scrollIndicator is always being displayed behind the section header view on iOS 11.

Steps to Reproduce:
Create a collectionview with some sections and an empty UICollectionReusableView as a header view. Change the background color of this view to something, like redColor for example.
The scrollIndicator will be displayed behind the header view.


![alt text](https://github.com/mauriciomeirelles/CollectionviewView_scrollIndicator_Bug/blob/master/bug_example.png?raw=true)



http://openradar.appspot.com/radar?id=5019737440387072
