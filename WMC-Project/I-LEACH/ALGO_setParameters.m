function [Area,Model]=ALGO_setParameters(n)

%Set Inital PARAMETERS

%Field Dimensions - x and y in(m)
Area.x=1000;
Area.y=1000;

%Sink Coordinate  - base station
Sinkx=0.5*Area.x;
Sinky=Sinkx;

%Optimal Election Probability of a node to become cluster head
p=0.1;

% Energy Model (Joules)
Eo=4; %Initial Energy 

%Eelec=Etx=Erx  (ElectronicEnergy,TransferEngergy,ReceiverEngergy)
ETX=50*0.000000001;
ERX=50*0.000000001;

%Transmit Amplifier types
Efs=10e-12;
Emp=0.0013*0.000000000001;

%Data Aggregation Energy
EDA=5*0.000000001;

%Computation of do 
do=sqrt(Efs/Emp);

% Run Time Parameters %
%maximum number of rounds
rmax=200;

%Data packet size
DpacketLen=4000;

%Hello packet size
HpacketLen=100;

%Number of Packets sent in steady-state phase
NumPacket=10;

%Radio Range
RR=0.5*Area.x*sqrt(2);


%CICRCULAR CLUSTER CREATION PARAMTERS
%Number of segments
numRx=fix(sqrt(p*n));   %sqrt(probability*number of nodes)
%diameter of circular cluster
dr=Area.x/numRx;
% END OF PARAMETERS %

%Save in Model 
Model.n=n;
Model.Sinkx=Sinkx;
Model.Sinky=Sinky;
Model.p=p;
Model.Eo=Eo;
Model.ETX=ETX;
Model.ERX=ERX;
Model.Efs=Efs;
Model.Emp=Emp;
Model.EDA=EDA;
Model.do=do;
Model.rmax=rmax;
Model.DpacketLen=DpacketLen;
Model.HpacketLen=HpacketLen;
Model.NumPacket=NumPacket;
Model.RR=RR;


% ALGO
Model.numRx=numRx;
Model.dr=dr;

end