clc,clear
cor=[70.0000   40.0000
   53.7121   15.3046
   56.5432   21.4188
   20.1050   15.4562
   26.2418   18.1760
   28.2694   29.0011
    8.9586   24.6635
    8.1519    9.5325
   31.9499   17.6309
   43.5474    3.9061
   23.9222    7.6306
   21.5051   24.0909
   17.1168   20.0354
   52.1181    0.4088
   37.5848   16.8474
   14.4703   13.6368
   58.6849   27.1485
   38.4300    8.4648
   13.7909    1.9510
   40.8801   14.2978
   39.9494   29.5114
    8.0831   27.6705
    1.3496   16.8359
   15.7320   19.5697
    6.9909   23.1804
    4.1591    3.1853
   51.1758    0.0322
   10.8198   16.2529
    1.9451    0.2057
   44.0356   13.5401
   32.1910    5.8699
   16.5618   23.6143
   22.1075   18.5569
    0.7732    0.4656
   53.3524   26.7256
   51.9612   22.8511
   15.2548   27.2111
   34.1688   22.7571
    9.5559   11.4219
   35.6619    9.9333
   19.8660   15.1224
   39.5168   16.9371
   51.8181   23.0159
   34.0574   23.3960
   58.8289   14.5229
   47.5099   24.0664
    9.1556   14.1304
   49.9816    6.0828
   11.5118   17.3884
   38.3392   19.9950
   40.1400   20.3030
   46.3253   28.2753
   22.7891   23.1045
   26.4951   22.1221
   28.9836   25.9879
   36.4863   29.7284
   10.5597   15.1178
    0.1215   18.8726
   47.4134   23.7783
   30.8165   13.4595
   12.7938   15.7307
    6.2070    5.1442
    9.4402    3.9200
   24.4509    6.5634
   24.4654    3.1644
    3.1616    4.2428
   56.5089   13.7090
    8.9983   23.6440
   23.0624    8.4319
   18.6635    6.7436
   10.1121   27.2662
   53.7989    0.2199
   19.3635   17.6622
   44.0398   16.2635
   24.6543   19.6057
   23.9876    9.4030
   30.3313    6.9348
   10.1584   12.4819
   31.4847    8.9640
   38.4722   20.1731
    0.9718   28.1477
   50.2111   10.2944
   48.2077   16.8889
   41.8671    3.5667
   27.7133    5.0706
    4.9568    8.3669
   49.2430   16.7044
   11.5812   14.5677
   26.7213   28.5667
    0.7775    6.9576
   18.5245   14.3598
   52.5211   15.7957
   50.1156   23.7816
   19.9857    5.7902
   52.8423   27.2880
   28.7812   27.6659
   33.6490    0.3980
   36.9545   23.0265
   39.7139   28.4203
   36.9980   24.3992
   41.1084   27.7149];

m=size(cor,1);
D=zeros(m);
for i=1:m
    d=repmat(cor(i,:),m,1)
    D(:,i)=6370*acos(cos(d(:,1)-cor(:,1)).*cos(cor(:,2)).*cos(d(:,2))+sin(d(:,2)).*sin(cor(:,2)));
end
    
    