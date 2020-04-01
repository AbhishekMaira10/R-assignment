myData<-read.csv("winter.csv");
displayData<-matrix(0,nrow=5,ncol=5);
rownames(displayData)<-c("Mean","Median","Mode","Standard Deviation","Variance");
colnames(displayData)<-c("O3","NO2","NO","SO2","PM10");
print(displayData)

for(i in 2:6)
{
  displayData[1,i-1]<-mean(myData[,i]);
  displayData[2,i-1]<-median(myData[,i]);
  displayData[3,i-1]<-mode(myData[,i]);
  displayData[4,i-1]<-sd(myData[,i]);
  displayData[5,i-1]<-var(myData[,i]);
} 
