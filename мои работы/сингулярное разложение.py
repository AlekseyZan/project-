from sklearn.decomposition import TruncatedSVD,PCA
import numpy as np 
n = np.random.rand(40,10)

import pandas as pd


data = pd.DataFrame(n)
data.head(5)
svd = TruncatedSVD(5)
svd.fit(data)
TruncatedSVD(n_components=5)
svd.transform(data)
new_m = svd.transform(data)
new_data = pd.DataFrame(new_m)
print(new_data)