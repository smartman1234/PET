function [Ra, PET] = getResult(Lat, Long, tempsource, maxtempsource, mintempsource)
    [tempdata, temptext, tempraw] = xlsread(tempsource);
    
    % define time
    time = datetime(temptext(2:end,1));
        
    % get temperature
    [temp, maxtemp, mintemp] = getTemperature(tempsource, maxtempsource, mintempsource);
    
    % get Ra of specific mask
    Ra = solar_radiation(time,Lat)';
    Ra = reshape(Ra, [1,1,size(time)]);
    
    % plot Ra
    figure
    subplot(2, 1, 1)
    title('Ra')
    plot(time,squeeze(Ra(1,1,:)))
    ylabel('Ra [MJ m^2 day^{-1}]')
    title(['Solar radiation at ' num2str(Lat) '\circN'])
    
    % get PET of specific mask
    PET = pet(Ra,maxtemp,mintemp,temp);
    
    % plot PET
    subplot(2, 1, 2)
    title('PET')
    plot(time,squeeze(PET(1,1,:)))
    ylabel('PET [mm day^{-1}]')
    title(['Potential evaporation at ' num2str(Lat) '\circN, ' num2str(Long) '\circE' ])

end

