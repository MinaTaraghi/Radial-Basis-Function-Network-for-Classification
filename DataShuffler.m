data=importdata('Data.txt');
TotalNo=size(data,1);
data=data(randperm(TotalNo),:);
fID=fopen('Shuffled_Data.txt','w');
for i=1:TotalNo
fprintf(fID,'%.13f %.13f %.13f %.0f\n',[data(i,1),data(i,2),data(i,3),data(i,4)]);
end
fclose(fID);
