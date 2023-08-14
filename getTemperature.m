function [temp, maxtemp, mintemp] = getTemperature(tempsource, maxtempsource, mintempsource)
    [tempdata, temptext, tempraw] = xlsread(tempsource);
    temp = tempdata(:,1)';
    [maxtempdata, maxtemptext, maxtempraw] = xlsread(maxtempsource);
    maxtemp = maxtempdata(:,1)';
    [mintempdata, mintemptext, mintempraw] = xlsread(mintempsource);
    mintemp = mintempdata(:,1)';

    len = size(temp);
    temp = reshape(temp, [1,1,len(2)]);
    maxtemp = reshape(maxtemp, [1,1,len(2)]);
    mintemp = reshape(mintemp, [1,1,len(2)]);
end

