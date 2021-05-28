function Sensors=ALGO_configureSensors(Model,n,GX,GY)

%Configuration EmptySensor
ES.xd=0; %location of x
ES.yd=0; %location of y
ES.G=0;  %flag for being clusterhead
ES.df=0; %dead flag
ES.type='N'; %no clusterhead initially
ES.E=0; %initial energy of node
ES.id=0; %id
ES.dis2sink=0;  %distance between node and baseStation
ES.dis2ch=0;    %distance between clusterHead
ES.MCH=n+1;    %Member of CH

%% Configuration Sensors
Sensors=repmat(ES,n+1,1);  % replicate the sensor configuration for all other nodes

for i=1:1:n
    %set x location
    Sensors(i).xd=GX(i); 
    %set y location
    Sensors(i).yd=GY(i);
    %Check whether in previous rounds has been clusterhead or not? not=0 and be=n
    Sensors(i).G=0;
    %dead flag. Whether dead or alive S(i).df=0 alive. S(i).df=1 dead.
    Sensors(i).df=0; 
    %initially there are not each cluster heads 
    Sensors(i).type='N';
    %initially all nodes have equal Energy
    Sensors(i).E=Model.Eo;
    %id
    Sensors(i).id=i;
    %Sensors(i).RR=Model.RR;
    
end 

Sensors(n+1).xd=Model.Sinkx; 
Sensors(n+1).yd=Model.Sinky;
Sensors(n+1).E=100;
Sensors(n+1).id=n+1;
end