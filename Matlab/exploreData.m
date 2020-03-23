%%                        Explore IEO dataset 
%
% Ivan Cester     -       March 11th 2020
%
% Dependencies: import_IEO_CSV.m 
%
% Input:  -years to be loaded (add year in array 'Year_load' in the inputs
%          section 
%         -Path to files
%         -csv files from IEO ex: Year_2010.csv
%
% Output: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Inputs
% Year_load=[2010, 2011, 2012, 2013, 2014,
Year_load=2010:2017;
filespath='/Users/Ivan/Documents/Ivan/Data/MIREIA/IEO/abaqua_data_by_year/';

%% Load Data
Data=[];
for i=1:length(Year_load)
    dat = import_IEO_CSV([filespath,'Year_',int2str(Year_load(i)),'.csv'], 2, inf);
    Data=[Data;dat];
end
clear dat

%% Explore the data

% find the dates and locations where many kg of plastic wherre found
threshold = 300
fInd=find(Data.Plastic_kg >= threshold);

Data_many_pl_kg=Data(fInd,:);

