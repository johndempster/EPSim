program EPSim;

uses
  Forms,
  SHARED in 'SHARED.PAS',
  EPSimMain in 'EPSimMain.pas' {MainFrm},
  hodgkin_huxley_squid_axon_model_1952_unit in 'hodgkin_huxley_squid_axon_model_1952_unit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Brain Slice Epilepsy Simulation';
  Application.HelpFile := 'C:\Users\John\Documents\Embarcadero\Studio\Projects\EPSim\APSIM.chm';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
end.
