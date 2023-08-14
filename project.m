[catdata, cattext, catraw] = xlsread('data\Sub Catchment Coordinates (boundaries).xlsx', 'Sheet1');

% For mask1
tempsource1 = 'data\Mask 1 Temperature, Precipitation.xlsx';
maxtempsource1 = 'data\mask1_tmax.csv';
mintempsource1 = 'data\mask1_tmin.csv';

maxLat1 = catdata(1,1);
minLat1 = catdata(2,1);
maxLong1 = catdata(4,1);
minLong1 = catdata(3,1);

Lat1 = mean([maxLat1, minLat1]);
Long1 = mean([maxLong1, minLong1]);

% For mask2
tempsource2 = 'data\Mask 2 Temperature, Precipitation.xlsx';
maxtempsource2 = 'data\mask2_tmax.csv';
mintempsource2 = 'data\mask2_tmin.csv';

maxLat2 = catdata(1,2);
minLat2 = catdata(2,2);
maxLong2 = catdata(4,2);
minLong2 = catdata(3,2);

Lat2 = mean([maxLat2, minLat2]);
Long2 = mean([maxLong2, minLong2]);

% For mask3
tempsource3 = 'data\Mask 3 Temperature, Precipitation.xlsx';
maxtempsource3 = 'data\mask3_tmax.csv';
mintempsource3 = 'data\mask3_tmin.csv';

maxLat3 = catdata(1,3);
minLat3 = catdata(2,3);
maxLong3 = catdata(4,3);
minLong3 = catdata(3,3);

Lat3 = mean([maxLat3, minLat3]);
Long3 = mean([maxLong3, minLong3]);

% For mask4
tempsource4 = 'data\Mask 4 Temperature, Precipitation.xlsx';
maxtempsource4 = 'data\mask4_tmax.csv';
mintempsource4 = 'data\mask4_tmin.csv';

maxLat4 = catdata(1,4);
minLat4 = catdata(2,4);
maxLong4 = catdata(4,4);
minLong4 = catdata(3,4);

Lat4 = mean([maxLat4, minLat4]);
Long4 = mean([maxLong4, minLong4]);

% For mask5
tempsource5 = 'data\Mask 5 Temperature, Precipitation.xlsx';
maxtempsource5 = 'data\mask5_tmax.csv';
mintempsource5 = 'data\mask5_tmin.csv';

maxLat5 = catdata(1,5);
minLat5 = catdata(2,5);
maxLong5 = catdata(4,5);
minLong5 = catdata(3,5);

Lat5 = mean([maxLat5, minLat5]);
Long5 = mean([maxLong5, minLong5]);

% For mask1
tempsource6 = 'data\Mask 6 Temperature, Precipitation.xlsx';
maxtempsource6 = 'data\mask6_tmax.csv';
mintempsource6 = 'data\mask6_tmin.csv';

maxLat6 = catdata(1,6);
minLat6 = catdata(2,6);
maxLong6 = catdata(4,6);
minLong6 = catdata(3,6);

Lat6 = mean([maxLat6, minLat6]);
Long6 = mean([maxLong6, minLong6]);

%[Ra1, PET1] = getResult(Lat1, Long1, tempsource1, maxtempsource1, mintempsource1);
%[Ra2, PET2] = getResult(Lat2, Long2, tempsource2, maxtempsource2, mintempsource2);
%[Ra3, PET3] = getResult(Lat3, Long3, tempsource3, maxtempsource3, mintempsource3);
%[Ra4, PET4] = getResult(Lat4, Long4, tempsource4, maxtempsource4, mintempsource4);
%[Ra5, PET5] = getResult(Lat5, Long5, tempsource5, maxtempsource5, mintempsource5);
%[Ra6, PET6] = getResult(Lat6, Long6, tempsource6, maxtempsource6, mintempsource6);