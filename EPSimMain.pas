unit EPSimMain;
// -----------------------------------------------
// Epilepsy Brain Slice Simulation
// (c) J. Dempster, University of Strathclyde 2015
// -----------------------------------------------
// V1.0
// V1.0.1 2.08.16 Normal brain slice now has activity. More drugs added
// V1.0.2 2.08.16 Topiramate added. Icon updated. Help file updated.
// V1.0.3 19.09.16 Salt solutions group hidden and drugs moved above stim.
// V1.0.4 04.10.16 Low calcium solution can be added to inhibit transmitter release
// V1.0.5 03.10.16 MaxPoints increaseed to 100000000
//                 Data loaded kept within ADC buffer in LoadFromFile()
// V1.0.6 13.07.20 New, more realistic model for generating  epileptiform activity
//                 Effective concentrations of drugs now based on data from experimental studies
//                 Drugs concentrations now selected from list


interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScopeDisplay, ValidatedEdit, math, Menus, ExtCtrls,UITypes,
  HTMLLabel, StrUtils, shared, ComCtrls, htmlhelpviewer, shellapi,
  hodgkin_huxley_squid_axon_model_1952_unit, Vcl.Imaging.GIFImg ;

const
    MaxPoints = 100000000 ;
    MaxChannels = 2 ;
    //MaxDisplayPoints = 5000 ;
    MaxDrugs = 100 ;
    MaxMarkers = 500 ;
    FileHeaderSize = 8192 ;
    DataFileExtension = '.EPS' ;

type

  TDrug = record
          Name : String ;
          ShortName : String ;
          FinalBathConcentration : single ;
          BathConcentration : single ;
          EC50_GNa : Single ;
          EC50_GK : Single ;
          EC50_GCaL : Single ;
          EC50_GCaHVA : Single ;
          EC50_BetaADR : Single ;
          EC50_NaClosedState : Single ;
          EC50_GABAA : Single ;
          EC50_Glut : Single ;
          Antagonist : Boolean ;
          end ;

TIon = record
     CIn : Single ;
     COut : Single ;
     FinalCOut : Single ;
     Standard : Single ;
     New : Single ;
     G : Single ;
     GMAX : Single ;
     VRev : single ;
     I : Single ;
     m : single ;
     n : single ;
     h : single ;
     end ;

TStimulus = record
          Start : single ;
          Amplitude : single ;
          Duration : single ;
          I : single ;
          NumStimDone : Integer ;
          end ;

TCell = record
      Temperature : single ;
      rtf : single ;
      Length : single ;
      Radius : single ;
      Area : single ;
      cm : single ;
      c : single ;
      Noise : single ;
      Na : TIon ;
      K : TIon ;
      Cl : TIon ;
      Ca : TIon ;
      Mg : TIon ;
      DAP : TDrug ;
      TTX : TDrug ;
      LIG : TDrug ;
      Stim : TStimulus ;
      Vm : Single ;
      Im : Single ;
      GABA_Gmax : Single ;
      GABA_Vrev : Single ;
      GABA_I : Single ;
      Glut_Gmax : Single ;
      Glut_Vrev : Single ;
      Glut_I : Single ;

      t : double ;
      dt : double ;
      Step : Integer ;
      NumStepsPerDisplayPoint : Integer ;
      end ;

  TMainFrm = class(TForm)
    ControlsGrp: TGroupBox;
    TissueGrp: TGroupBox;
    GroupBox5: TGroupBox;
    bLowCaSaltSoln: TButton;
    AntagonistGrp: TGroupBox;
    cbDrug: TComboBox;
    bAddDrug: TButton;
    Label4: TLabel;
    bNewExperiment: TButton;
    GroupBox6: TGroupBox;
    bStimulusOn: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    mnLoadExperiment: TMenuItem;
    mnSaveExperiment: TMenuItem;
    N1: TMenuItem;
    mnExit: TMenuItem;
    Timer: TTimer;
    mnEdit: TMenuItem;
    mnCopyData: TMenuItem;
    mnCopyImage: TMenuItem;
    N2: TMenuItem;
    mnPrint: TMenuItem;
    PrinterSetupDialog: TPrinterSetupDialog;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    DisplayGrp: TGroupBox;
    DisplayPage: TPageControl;
    ChartPage: TTabSheet;
    ExperimentPage: TTabSheet;
    sbDisplay: TScrollBar;
    ExptSetup: TImage;
    mnHelp: TMenuItem;
    mnContents: TMenuItem;
    bStandardSaltSoln: TButton;
    bRemoveAllDrugs: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edStimulusCurrent: TValidatedEdit;
    Label3: TLabel;
    edStimulusDuration: TValidatedEdit;
    bStimulusOff: TButton;
    scDisplay: TScopeDisplay;
    mnPrinterSetup: TMenuItem;
    pnDisplayWindow: TPanel;
    bTDisplayHalf: TButton;
    edDisplayWindow: TValidatedEdit;
    bTDisplayDouble: TButton;
    mnSnapDisplay: TMenuItem;
    mnClearSnap: TMenuItem;
    ckVm: TCheckBox;
    ckIm: TCheckBox;
    ckINa: TCheckBox;
    ckIK: TCheckBox;
    Label7: TLabel;
    cbCellType: TComboBox;
    pnRecord: TPanel;
    edStartAt: TValidatedEdit;
    bRecord: TButton;
    bStop: TButton;
    Label8: TLabel;
    Label9: TLabel;
    ConditionGrp: TGroupBox;
    rbNormal: TRadioButton;
    rbEpilepsy: TRadioButton;
    cbConcentration: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure bRecordClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure bLowCaSaltSolnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnExitClick(Sender: TObject);
    procedure mnCopyDataClick(Sender: TObject);
    procedure mnPrintClick(Sender: TObject);
    procedure mnCopyImageClick(Sender: TObject);
    procedure mnLoadExperimentClick(Sender: TObject);
    procedure bStimulusOnClick(Sender: TObject);
    procedure bStimulationOffClick(Sender: TObject);
    procedure bNewExperimentClick(Sender: TObject);
    procedure mnSaveExperimentClick(Sender: TObject);
    procedure mnContentsClick(Sender: TObject);
    procedure bStimulusOffClick(Sender: TObject);
    procedure bAddDrugClick(Sender: TObject);
    procedure bStandardSaltSolnClick(Sender: TObject);
    procedure bRemoveAllDrugsClick(Sender: TObject);
    procedure mnPrinterSetupClick(Sender: TObject);
    procedure edDisplayWindowKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bTDisplayHalfClick(Sender: TObject);
    procedure bTDisplayDoubleClick(Sender: TObject);
    procedure mnSnapDisplayClick(Sender: TObject);
    procedure mnClearSnapClick(Sender: TObject);
    procedure ckDvDtClick(Sender: TObject);
    procedure scDisplayCursorChange(Sender: TObject);
    procedure edStartAtKeyPress(Sender: TObject; var Key: Char);
    procedure edStimulusCurrentKeyPress(Sender: TObject; var Key: Char);
    procedure edStimulusDurationKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    CellType : Integer ;
    ADC : Array[0..MaxPoints*MaxChannels-1] of SmallInt ;
    NumPointsInBuf : Integer ;   // No. of data points in buffer
    StartPoint : Integer ;
    NumPointsDisplayed : Integer ;
    TimerEventRunning : Boolean ;

    // Nerve stimulus
    Cell : TCell ;
    Drugs : Array[0..MaxDrugs-1] of TDrug ;    // Drug properties array
    NumDrugs : Integer ;                     // No. of drugs available
    GNa_Available : Single ;                // Fraction Na conductance unblocked
    GK_Available : Single ;                 // Fraction K Channels unblocked
    GCaL_Available : Single ;                 // Fraction Ca Channels unblocked
    GCaHVA_Available : Single ;             // Fraction high voltage activated Ca Channels available
    BetaADR_Active : single ;               // Fraction of beta adrenoceptors active
    NaClosedStateR : single ;         // Prolong Na channel closed state
    GABAAR : single ;                  // GABA A receptor activation (inhibitory)
    GlutR : single ;                  // Glutamate receptor activation (excitatory)
    GlutR_Tau : single ;
    GlutR_Epilepsy  : single ;
    MarkerList : TStringList ;   // Chart annotation list

    UnsavedData : Boolean ;  // Un-saved data flag

    procedure NewExperiment ;
    procedure UpdateDisplay(
              var States : Array of Single  ) ;
    procedure UpdateIonConcentrations ;
    procedure UpdateDrugConcentrations ;
    procedure AddChartAnnotations ;
    procedure AddDrugMarker( ChartAnnotation : String ) ;
    procedure LoadFromFile( FileName : String ) ;
    procedure SaveToFile( FileName : String ) ;
    procedure DoNeuronStep(
              var States : Array of Single  ) ;
    procedure UpdateDisplayWindow ;
    procedure SnapDisplayWindow ;
  public
    { Public declarations }

    hodgkin_huxley_squid_axon_model_1952 : Thodgkin_huxley_squid_axon_model_1952 ;
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}


const
    MaxADCValue = 2047 ;
    MinADCValue = -2048 ;
    NoiseStDev = 10 ;
    MaxVm = 150.0 ;
    MaxIM = 1000.0 ;
    BackgroundNoiseStDev = 0.1 ;  // Background noise (gms)
    MixingRate = 2000.0 ;
    SquidAxon = 0 ;

procedure TMainFrm.FormShow(Sender: TObject);
// ------------------------------------------------
// Initialise controls when form is first displayed
// ------------------------------------------------
var
    FileName : String ;
   HelpFileName,LocalHelpFilePath : string ;
   TempPath : Array[0..511] of WideChar ;
   ch : Integer ;
begin

     // Find help file

     // Find help file
     HelpFileName := 'epsim.chm' ;
     Application.HelpFile := ExtractFilePath(ParamStr(0)) + HelpFileName ;
     GetTempPath( 512, TempPath ) ;
     LocalHelpFilePath := String(TempPath) + HelpFileName ;
     CopyFile( PCHar(Application.HelpFile),PCHar(LocalHelpFilePath),  false ) ;
     if FileExists(LocalHelpFilePath) then Application.HelpFile := LocalHelpFilePath ;

     // Create annotation list
     MarkerList := TStringList.Create ;

     { Setup chart display }
     scDisplay.MaxADCValue :=  MaxADCValue ;
     scDisplay.MinADCValue := MinADCValue ;
     scDisplay.DisplayGrid := True ;

     scDisplay.NumPoints := 0 ;
     scDisplay.NumChannels := 4 ;

     { Membrane potential channel }
     ch := 0 ;
     scDisplay.ChanOffsets[ch] := ch ;
     scDisplay.ChanUnits[ch] := 'mV' ;
     scDisplay.ChanName[ch] := 'Vm' ;
     scDisplay.ChanScale[ch] := MaxVm / MaxADCValue ;
     scDisplay.yMin[ch] := MinADCValue ;
     scDisplay.yMax[ch] := (2*MaxADCValue) div 3 ;
     scDisplay.ChanVisible[ch] := True ;
     ckVm.Tag := ch ;
     ckVm.Checked := True ;

     { Membrane current channel }
     ch := 1 ;
     scDisplay.ChanOffsets[ch] := ch ;
     scDisplay.ChanUnits[ch] := 'pA' ;
     scDisplay.ChanName[ch] := 'Im' ;
     scDisplay.ChanScale[ch] := (MaxIm) / MaxADCValue ;
     scDisplay.yMin[ch] := MinADCValue ;
     scDisplay.yMax[ch] := MaxADCValue ;
     scDisplay.ChanVisible[ch] := False ;
     ckIm.Tag := ch ;
     ckIm.Checked := False ;

     { Na current channel }
     ch := 2 ;
     scDisplay.ChanOffsets[ch] := ch ;
     scDisplay.ChanUnits[ch] := 'pA' ;
     scDisplay.ChanName[ch] := 'I.Na' ;
     scDisplay.ChanScale[ch] := (MaxIm) / MaxADCValue ;
     scDisplay.yMin[ch] := MinADCValue ;
     scDisplay.yMax[ch] := MaxADCValue ;
     scDisplay.ChanVisible[ch] := False ;
     ckINa.Tag := ch ;
     ckIm.Checked := False ;

     { K current channel }
     ch := 3 ;
     scDisplay.ChanOffsets[ch] := ch ;
     scDisplay.ChanUnits[ch] := 'pA' ;
     scDisplay.ChanName[ch] := 'I.K' ;
     scDisplay.ChanScale[ch] := (MaxIm) / MaxADCValue ;
     scDisplay.yMin[ch] := MinADCValue ;
     scDisplay.yMax[ch] := MaxADCValue ;
     scDisplay.ChanVisible[ch] := False ;
     ckIK.Tag := ch ;
     ckIK.Checked := False ;

     scDisplay.TUnits := 's' ;
     edStartAt.Units := scDisplay.TUnits ;
     edDisplayWindow.Units := scDisplay.TUnits ;

     scDisplay.xMin := 0 ;
     scDisplay.xMax := scDisplay.MaxPoints-1 ;
     scDisplay.xOffset := 0 ;

     { Create a set of zero level cursors }
     scDisplay.ClearHorizontalCursors ;
     for ch  := 0 to scDisplay.NumChannels-1 do
        begin
        scDisplay.AddHorizontalCursor( ch, clRed, True, '' ) ;
        scDisplay.HorizontalCursors[ch] := 0 ;
        end;

     // Vertical readout cursor
     scDisplay.ClearVerticalCursors ;
     scDisplay.AddVerticalCursor(-1,clGreen, 't0') ;
     scDisplay.AddVerticalCursor(-1,clGreen, '?t0?y') ;
     scDisplay.VerticalCursors[0] := scDisplay.MaxPoints div 20 ;
     scDisplay.VerticalCursors[1] := scDisplay.MaxPoints div 2 ;

     cbCellType.Clear ;
     cbCellType.Items.Add('Neuron');
     cbCellType.ItemIndex := 0 ;
     CellType := cbCellType.ItemIndex ;

     // Start new experiment
     NewExperiment ;

     // Load experiment if file name in parameter string
     FileName := ParamStr(1) ;
     if LowerCase(ExtractFileExt(FileName)) = '.nvs' then begin
        if FileExists(FileName) then LoadFromFile( FileName ) ;
        end ;


     Timer.Enabled := True ;

     end;


procedure TMainFrm.NewExperiment ;
// ------------------------------------
// Start new experiment with new tissue
// ------------------------------------
var
    i,iKeep : Integer ;
begin

    CellType := cbCellType.ItemIndex ;

     // Create list of drugs
     // --------------------

     // Initialise all EC50's to inneffective
     for I := 0 to High(Drugs) do
         begin
         Drugs[i].EC50_GNa := 1E3 ;
         Drugs[i].EC50_GK := 1E3 ;
         Drugs[i].EC50_GCaL := 1E3 ;
         Drugs[i].EC50_GCaHVA := 1E3 ;
         Drugs[i].EC50_BetaADR := 1E3 ;
         Drugs[i].EC50_NaClosedState := 1E3 ;
         Drugs[i].EC50_GABAA := 1E3 ;
         Drugs[i].EC50_Glut := 1E3 ;
         end;

     NumDrugs := 0 ;

     Drugs[NumDrugs].Name := 'Phenytoin' ;
     Drugs[NumDrugs].ShortName := 'PHY' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_NaClosedState := 5E-5 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Sodium Valproate' ;
     Drugs[NumDrugs].ShortName := 'VAL' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GABAA := 2E-3 ;
     Drugs[NumDrugs].EC50_NaClosedState := 1.7E-4 ;
     Drugs[NumDrugs].EC50_GCaHVA := 3E-3 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Lamotrigine' ;
     Drugs[NumDrugs].ShortName := 'LAM' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_NaClosedState := 5E-5 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

  {   Drugs[NumDrugs].Name := 'Levetiracetam' ;
     Drugs[NumDrugs].ShortName := 'BNZ' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GABAA := 1E-6 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;    }

     Drugs[NumDrugs].Name := 'Gabapentin' ;
     Drugs[NumDrugs].ShortName := 'GPN' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GCaHVA := 4E-5 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Midazolam' ;
     Drugs[NumDrugs].ShortName := 'MDZ' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GABAA := 1E-6 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Carbamazepine' ;
     Drugs[NumDrugs].ShortName := 'CBM' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_NaClosedState := 5E-5 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Topiramate' ;
     Drugs[NumDrugs].ShortName := 'TOP' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_NaClosedState := 1.5E-5 ;
     Drugs[NumDrugs].EC50_GCaHVA := 3E-4 ;
     Drugs[NumDrugs].EC50_GABAA := 2.5E-4 ;
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     // Create list of agonists
     iKeep := Max(cbDrug.ItemIndex,0) ;
     cbDrug.Clear ;
     for i := 0 to NumDrugs-1 do
         cbDrug.Items.AddObject( Drugs[i].Name, TObject(i)) ;
     cbDrug.ItemIndex := iKeep ;

     // Concentration list
     cbConcentration.Clear ;
     cbConcentration.Items.Add('1E-6 M') ;
     cbConcentration.Items.Add('5E-6 M') ;
     cbConcentration.Items.Add('1E-5 M') ;
     cbConcentration.Items.Add('5E-5 M') ;
     cbConcentration.Items.Add('1E-4 M') ;
     cbConcentration.Items.Add('5E-4 M') ;
     cbConcentration.Items.Add('1E-3 M') ;
     cbConcentration.Items.Add('5E-3 M') ;
     cbConcentration.Items.Add('1E-2 M') ;
     cbConcentration.ItemIndex := 0 ;

     Cell.dt := 2E-5 ;

     { Define constant simulation parameters }
     Cell.Temperature := 20.0 ;
     Cell.rtf := 0.02354*(Cell.Temperature + 273.0)/273.0 ;
     Cell.Length := 50.0*1E-4 ;  { cm }
     Cell.Radius := 20.0*1E-4 ; { cm }
     Cell.Area := 2.*PI*Cell.Radius*Cell.Length ;
     Cell.Cm := 1E-6 ; {* Specific membrane capacity F/cm2 }
     Cell.C := Cell.Cm*Cell.Area ;

     { Define initial drug/ion concentrations }
     Cell.Na.Cin := 12. ;                  { Internal [Na] mM }
     Cell.Na.Cout := 145. ;
     Cell.Na.FinalCout := Cell.Na.Cout ;

     Cell.K.Cin := 140. ;         { Internal [K] mM }
     Cell.K.Cout := 5. ;
     Cell.K.FinalCout := Cell.K.Cout ;

     Cell.Cl.Cout := 110.0 ;
     Cell.Cl.Cin := 4.0 ;
     Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;
     Cell.Vm := Cell.K.VRev ;              { Set resting potential to K reversal pot. }

     Cell.Ca.Cout := 2.0 ;
     Cell.Ca.Cin := 0.1 ;
     Cell.Ca.FinalCout := Cell.Ca.Cout ;

     Cell.Mg.Cout := 1. ;
     Cell.Stim.Amplitude := -2E-9 ;
     Cell.Stim.Duration := 1E-3 ;

     Cell.NumStepsPerDisplayPoint := 10 ;
     Cell.Step := 0 ;

     GlutR := 0.0 ;
     GlutR_Epilepsy := 0.0 ;
     GlutR_Tau := 1E-3 ;
     rbEpilepsy.Checked := False ;

     { Clear buffer  }
     for i := 0 to MaxPoints*MaxChannels-1 do ADC[i] := 0 ;
     StartPoint :=  0 ;
     scDisplay.SetDataBuf( @ADC[StartPoint] ) ;
     scDisplay.TScale := Cell.dt*Cell.NumStepsPerDisplayPoint ;
     edStartAt.Scale := scDisplay.TScale ;
     scDisplay.MaxPoints := Round(edDisplayWindow.Value/(Cell.dt*Cell.NumStepsPerDisplayPoint));
     scDisplay.xMin := 0 ;
     scDisplay.xMax := scDisplay.MaxPoints-1 ;
     scDisplay.xOffset := 0 ;
     scDisplay.ClearLines ;
     scDisplay.ClearMarkers ;

     NumPointsDisplayed := 0 ;
     NumPointsInBuf := 0 ;

     // Clear chart annotation
     MarkerList.Clear ;

     bRecord.Enabled := True ;
     bStop.Enabled := False ;

     rbNormal.Checked := True ; // Return to normal mode

     sbDisplay.Enabled := False ;
     sbDisplay.Position := 0 ;

     hodgkin_huxley_squid_axon_model_1952.Init ;
//            Cell.Na.Cin := hodgkin_huxley_squid_axon_model_1952.Y[15] ;{ Internal [Na] mM }
//            Cell.Na.Cout := hodgkin_huxley_squid_axon_model_1952.y[16] ;
//            Cell.K.Cin := hodgkin_huxley_squid_axon_model_1952.Y[13] ;         { Internal [K] mM }
//            Cell.K.Cout := hodgkin_huxley_squid_axon_model_1952.Y[14] ;
     Cell.Na.FinalCout := Cell.Na.Cout ;
     Cell.Na.Standard := Cell.Na.Cout ;

     Cell.K.FinalCout := Cell.K.Cout ;
     Cell.K.Standard := Cell.K.Cout ;

     Cell.Ca.FinalCout := Cell.Ca.Cout ;
     Cell.Ca.Standard := Cell.Ca.Cout ;

     Cell.Cl.Cout := 110.0 ;
     Cell.Cl.Cin := 4.0 ;

     bStop.Click ;

     UnSavedData := False ;

     UpdateDisplayWindow ;

     end ;


procedure TMainFrm.TimerTimer(Sender: TObject);
// ---------------------
// Timed event scheduler
// ---------------------
var
    i : Integer ;
    States : Array[0..20] of Single ;
begin

     if TimerEventRunning then Exit ;

     TimerEventRunning := True ;

     if not bRecord.Enabled then begin
        for i := 0 to 150 do
          begin
          UpdateIonConcentrations ;
          UpdateDrugConcentrations ;
          DoNeuronStep(States) ;
          UpdateDisplay(States) ;
          end;

       scDisplay.DisplayNewPoints( NumPointsDisplayed ) ;
       scDisplay.Invalidate ;

        end
     else
        begin
        // Display
        if scDisplay.XOffset <> sbDisplay.Position then
           begin
           scDisplay.XOffset := sbDisplay.Position ;
           edStartAt.Scale := scDisplay.TScale ;
           edStartAt.Value := scDisplay.XOffset ;
           scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
           scDisplay.NumPoints := Min( scDisplay.MaxPoints,
                                       NumPointsInBuf - sbDisplay.Position) ;
           // Add annotations to chart
           AddChartAnnotations ;
           scDisplay.Invalidate ;
           end ;
        end ;

     TimerEventRunning := False  ;

     end;


procedure TMainFrm.AddChartAnnotations ;
// -------------------------------------
// Add drug annotations to chart display
// -------------------------------------
var
    i : Integer ;
    MarkerPosition : Integer ;
begin

     scDisplay.ClearMarkers ;
     for i := 0 to MarkerList.Count-1 do
         begin
         MarkerPosition := Integer(MarkerList.Objects[i]) - scDisplay.XOffset ;
         if (MarkerPosition > 0) and (MarkerPosition < scDisplay.MaxPoints) then
            begin
            scDisplay.AddMarker( MarkerPosition, MarkerList.Strings[i] ) ;
            end ;
         end ;
     end ;




procedure TMainFrm.UpdateIonConcentrations ;
// ---------------------------------
// Update ion concentrations in bath
// ---------------------------------
var
       dConc : Single ;
begin

    dConc := (Cell.Na.FinalCout - Cell.Na.Cout)*MixingRate*Cell.dt ;
    Cell.Na.Cout := Cell.Na.Cout + dConc ;
    Cell.Na.VRev := Cell.rtf * ln( Cell.Na.Cout / Cell.Na.Cin ) ;

    dConc := (Cell.K.FinalCout - Cell.K.Cout)*MixingRate*Cell.dt ;
    Cell.K.Cout := Cell.K.Cout + dConc ;
    Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;

    dConc := (Cell.Ca.FinalCout - Cell.Ca.Cout)*MixingRate*Cell.dt ;
    Cell.Ca.Cout := Cell.Ca.Cout + dConc ;
    Cell.Ca.VRev := Cell.rtf * ln( Cell.Ca.Cout / Cell.Ca.Cin ) ;

    Cell.Cl.Cin := Cell.Cl.Cout / exp(-Cell.K.Vrev/Cell.rtf) + 1.0 ;
    Cell.Cl.VRev := -Cell.rtf * ln( Cell.Cl.Cout / Cell.Cl.Cin ) ;

    end ;

procedure TMainFrm.UpdateDrugConcentrations ;
// ---------------------------------
// Update drug concentrations in bath
// ---------------------------------
var
       Sum,dConc,Occupancy,Efficacy : Single ;
       i : Integer ;
begin

    // Update drug bath concentrations
    for i := 0 to NumDrugs-1 do
         begin
         dConc := (Drugs[i].FinalBathConcentration - Drugs[i].BathConcentration)
                  *MixingRate*Cell.dt ;
         Drugs[i].BathConcentration := Drugs[i].BathConcentration + dConc ;
         end ;

    // Fraction of Na channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GNa) ;
        end ;
    GNa_Available := 1.0 / (1.0 + Sum ) ;

    // Fraction of K channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GK) ;
        end ;
    GK_Available := 1.0 / (1.0 + Sum ) ;

    // Fraction of CaL channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GCaL) ;
        end ;
    GCaL_Available := 1.0 / (1.0 + Sum ) ;

    // Fraction of CaHVA channels available
    // Note. Availability can only be reduced by 50%
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GCaHVA) ;
        end ;
    GCaHVA_Available := (1.0 / (1.0 + Sum )) ;

    // Beta-adrenoceptor activation
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + Drugs[i].BathConcentration/Drugs[i].EC50_BetaADR ;
        end ;
    Occupancy := Sum / ( 1. + Sum ) ;

    Efficacy := 0.0 ;
    for i := 0 to NumDrugs-1 do if not Drugs[i].Antagonist then
        begin
        Efficacy := Efficacy + Drugs[i].BathConcentration/Drugs[i].EC50_BetaADR ;
        end ;
    Efficacy := Efficacy / ( Sum + 0.001 ) ;
    BetaADR_Active :=  Efficacy*Occupancy ;

    // Fraction of Na channel closed states prolonged
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_NaClosedState) ;
        end ;
    NaClosedStateR := Sum / ( 1. + Sum ) ;

    // Fraction of GABA A receptors activated
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GABAA) ;
        end ;
    GABAAR := Sum / ( 1. + Sum ) ;

    // Fraction of glutamate receptors activated
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do
        begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_Glut) ;
        end ;
 //   GlutR := Sum / ( 1. + Sum ) ;

    end ;


procedure TMainFrm.DoNeuronStep(
              var States : Array of Single  ) ;
// ------------------------------
// Calculate next simulation step
// ------------------------------
var
     i : Integer ;
     ExcitatoryTransmitterRelease : double ;
     GlutR_Tau : single ;
begin

//    nSteps := Cell.NumStepsPerDisplayPoint ;
//    while nSteps > 0 do begin
      for i := 1 to Cell.NumStepsPerDisplayPoint do
       begin
       if Cell.Step = 0 then
          begin
          Cell.Stim.Start := 0.0 ;
          Cell.Stim.Amplitude := 0.0 ;
          Cell.Stim.Duration := 1E-4 ;
          end ;

       { Direct neuron stimulation }
       if (not bStimulusOn.Enabled) and bStimulusOff.Enabled then
          begin
          if Cell.t >= Cell.Stim.Start then
             begin
             Cell.Stim.I := Cell.Stim.Amplitude ;
             end ;
          if Cell.t >= (Cell.Stim.Start + Cell.Stim.Duration) then
             begin
             Cell.Stim.I := 0. ;
                // Single stim.
             bStimulusOn.Enabled := True ;
             bStimulusOff.Enabled := False ;
             end
          end
       else
          begin
          Cell.Stim.I := 0. ;
          end ;

       // Normal excitatory transmitter release from randomly occurring EPSPs in the absence of epileptic fit
       ExcitatoryTransmitterRelease := ((Cell.Ca.FinalCout/(Cell.Ca.FinalCout + 0.01))){*GCaHVA_Available} ;
       if Random < 0.00005 then GlutR := GlutR + ExcitatoryTransmitterRelease*0.8 ;

       // Transmitter release kinetics
       // Epileptic state is simulated by prolonging transmitter release
       // Activation of GABA A receptors and stabilisation of Na channel closed state by AEDs inhibit prolongation
       GlutR_Tau := 1E-3 ;
       if rbEpilepsy.Checked then
          begin
          GlutR_Tau :=  GlutR_Tau + 3E-2*GCaHVA_Available*(1.0-NaClosedStateR)*(1.0-GABAAR) ;
          end ;
       GlutR := Max(GlutR - (GlutR*Cell.dt)/GlutR_Tau,0.0) ;

       // Glutamate release due to epileptic activity
       // Suppressed by
       {
       if rbEpilepsy.Checked then
          GlutR_Epilepsy := (1.0 - 0.01)*GlutR_Epilepsy
                            + 0.01*(2.3+1.5*random)*ExcitatoryTransmitterRelease*(1.0-GABAAR)
          else  }
       GlutR_Epilepsy := (1.0 - 0.01)*GlutR_Epilepsy ;

       Cell.Vm := hodgkin_huxley_squid_axon_model_1952.Y[0] ;

       // GABA channel current (excitatory)
       Cell.GABA_Gmax := 1.0 ;
       Cell.GABA_Vrev := -90.0 ;
       Cell.GABA_I := Cell.GABA_GMax * ( Cell.Vm - Cell.GABA_Vrev ) * GABAAR ;

       // Glutamate channel current (inhibitory)
       Cell.Glut_Gmax := 0.7 ;
       Cell.Glut_Vrev := 0.0 ;
       Cell.Glut_I := Cell.Glut_GMax * ( Cell.Vm - Cell.Glut_Vrev ) * GlutR ;

       // Add currents to model
       hodgkin_huxley_squid_axon_model_1952.i_stim := (Cell.Stim.I*1E12) - Cell.GABA_I + -Cell.Glut_I ;

 //      xx      hodgkin_huxley_squid_axon_model_1952.Y[16] := Cell.Na.Cout ;
 //            hodgkin_huxley_squid_axon_model_1952.Y[14] := Cell.K.Cout ;
       hodgkin_huxley_squid_axon_model_1952.GNa_available := GNa_Available ;
       hodgkin_huxley_squid_axon_model_1952.GK_available := GK_Available ;
       hodgkin_huxley_squid_axon_model_1952.GCaL_available := GCaL_Available ;
       hodgkin_huxley_squid_axon_model_1952.BetaADR_Active := BetaADR_Active ;
       hodgkin_huxley_squid_axon_model_1952.NaClosedStateR := NaClosedStateR ;

  //     for i := 1 to Cell.NumStepsPerDisplayPoint do begin
           Inc(Cell.Step) ;
           Cell.t := Cell.t + Cell.dt ;
           hodgkin_huxley_squid_axon_model_1952.Compute(0.0) ;
           hodgkin_huxley_squid_axon_model_1952.UpdateStates(Cell.dt) ;
       end;
       States[0] := hodgkin_huxley_squid_axon_model_1952.Y[0] ;
//       States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;
       States[2] := hodgkin_huxley_squid_axon_model_1952.I_Na ;
       States[3] := hodgkin_huxley_squid_axon_model_1952.i_K ;
       States[1] := States[2] + States[3] ;

    end;


procedure TMainFrm.UpdateDisplay(
              var States : Array of Single  ) ;
// -------------------
// Update chart display
// -------------------
var
    StartPoints,ch,i : Integer ;
begin

    if NumPointsDisplayed >= scDisplay.MaxPoints then
       begin
       StartPoints := scDisplay.MaxPoints div 10 ;
       scDisplay.XOffset := scDisplay.XOffset + scDisplay.MaxPoints -  StartPoints ;
       sbDisplay.Max := sbDisplay.Max + scDisplay.MaxPoints ;
       sbDisplay.LargeChange := Max(scDisplay.MaxPoints div 100,1) ;
       NumPointsDisplayed := StartPoints ;
       sbDisplay.Position := scDisplay.XOffset ;
       scDisplay.SetDataBuf( @ADC[scDisplay.XOffset*scDisplay.NumChannels] ) ;
       // Add annotations to chart
       AddChartAnnotations ;
       end ;

    i := NumPointsInBuf*scDisplay.NumChannels ;
    for ch := 0 to scDisplay.NumChannels-1 do
        begin
        ADC[i] := Round(States[ch]/scDisplay.ChanScale[ch]) ;
        Inc(i) ;
        end;
    Inc(NumPointsDisplayed) ;
    Inc(NumPointsInBuf) ;

//    scDisplay.DisplayNewPoints( NumPointsDisplayed {- scDisplay.XOffset} ) ;
//    scDisplay.Invalidate ;

    end ;


procedure TMainFrm.bRecordClick(Sender: TObject);
// ----------------
// Start simulation
// ----------------
begin
     bRecord.Enabled := False ;
     bStop.Enabled := True ;
     sbDisplay.Enabled := False ;
     bNewExperiment.Enabled := False ;
     TissueGrp.Enabled := False ;
     bStimulusOff.Enabled := False ;
     bStimulusOn.Enabled := True ;

     UnSavedData := True ;

     NumPointsDisplayed := 0 ;
     sbDisplay.Max := sbDisplay.Max + scDisplay.MaxPoints ;
     sbDisplay.Position := NumPointsInBuf + 1 ;
     scDisplay.XOffset := sbDisplay.Position ;
     scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
     sbDisplay.Max := sbDisplay.Max + scDisplay.MaxPoints ;
     // Add annotations to chart
     AddChartAnnotations ;

     Cell.Stim.Start := Cell.dt*5 ;


     end;


procedure TMainFrm.bStopClick(Sender: TObject);
// ----------------
// Stop simulation
// ----------------
begin
     bRecord.Enabled := True ;
     bStop.Enabled := False ;
     sbDisplay.Enabled := True ;
     bNewExperiment.Enabled := True ;
     TissueGrp.Enabled := True ;
     bStimulusOn.Enabled := False ;
     bStimulusOff.Enabled := False ;
     UpdateDisplayWindow ;

     end;


procedure TMainFrm.bTDisplayDoubleClick(Sender: TObject);
// ------------------------------------------------
// Increase the duration of the display window by 25%
// ------------------------------------------------
begin
     edDisplayWindow.Value := edDisplayWindow.Value*1.25 ;
     UpdateDisplayWindow ;
     end;


procedure TMainFrm.bTDisplayHalfClick(Sender: TObject);
// ------------------------------------------------
// Reduce the duration of the display window by 25%
// ------------------------------------------------
begin
     edDisplayWindow.Value := edDisplayWindow.Value*0.75 ;
     UpdateDisplayWindow ;
     end;

procedure TMainFrm.bLowCaSaltSolnClick(Sender: TObject);
// -------------------------------------
// Change concentration of ions in bath
// -------------------------------------
var
     ChartAnnotation : String ;
begin

     Cell.Ca.FinalCout := 1E-6 ;

     // Add chart annotation
     ChartAnnotation := 'High Mg/Low Ca soln.' ;
     AddDrugMarker( ChartAnnotation ) ;

     end;


procedure TMainFrm.FormResize(Sender: TObject);
// ------------------------------------------------------
// Set control size/locations when program window resized
// ------------------------------------------------------
begin

     ControlsGrp.Height := Max( ClientHeight - ControlsGrp.Top - 10,2 ) ; ;

     DisplayGrp.Height := Max( ClientHeight - DisplayGrp.Top - 10,2) ;
     DisplayGrp.Width := Max( ClientWidth - DisplayGrp.Left - 10,2) ;

     DisplayPage.Height := DisplayGrp.ClientHeight - DisplayPage.Top - 10 ;
     DisplayPage.Width := DisplayGrp.ClientWidth - DisplayPage.Left - 10 ;

     pnRecord.Top := ChartPage.ClientHeight - pnRecord.Height - 5 ;
     pnRecord.Left := sbDisplay.Left ;

     sbDisplay.Top := pnRecord.Top -  sbDisplay.Height - 2 ;
     sbDisplay.Width := Max( ChartPage.ClientWidth - sbDisplay.Left - 10,2) ;
     pnDisplayWindow.Top := pnRecord.Top ;
     pnDisplayWindow.Left := sbDisplay.Left + sbDisplay.Width - pnDisplayWindow.Width ;

     scDisplay.Height := Max( sbDisplay.Top - scDisplay.Top,2) ;
     scDisplay.Width := Max( ChartPage.ClientWidth - scDisplay.Left - 10,2) ;

     // Centre experiment setup pictures on page

     ExptSetup.Left := Max( (ExperimentPage.ClientWidth - ExptSetup.Width) div 2,4) ;
     ExptSetup.Top := Max( (ExperimentPage.ClientHeight - ExptSetup.Height) div 2,4) ;

     end;


procedure TMainFrm.AddDrugMarker(
          ChartAnnotation : String
          ) ;
// ------------------------------
// Add drug addition/wash marker
// ------------------------------
begin
     if MarkerList.Count < MaxMarkers then begin
        ChartAnnotation := AnsiReplaceStr( ChartAnnotation, '-00', '-' ) ;
        ChartAnnotation := AnsiReplaceStr( ChartAnnotation, '00E', '0E' ) ;
        MarkerList.AddObject( ChartAnnotation, TObject(NumPointsInBuf) ) ;
        scDisplay.AddMarker( NumPointsInBuf - scDisplay.XOffset, ChartAnnotation ) ;
        end ;
     end ;


procedure TMainFrm.mnCopyDataClick(Sender: TObject);
// ----------------------------------------------------
// Copy sample values of displayed signals to clipboard
// ----------------------------------------------------
begin
     scDisplay.CopyDataToClipboard ;
     end;


procedure TMainFrm.mnPrintClick(Sender: TObject);
// ---------------------------
// Print displayed chart trace
// ---------------------------
var
    ch : Integer ;
begin
    scDisplay.PrinterLeftMargin := 25 ;
    scDisplay.PrinterRightMargin := 25 ;
    scDisplay.PrinterTopMargin := 25 ;
    scDisplay.PrinterBottomMargin := 25 ;

    // Time cal. bar
    scDisplay.TCalBar := 0.01/scDisplay.TScale ;
    while scDisplay.TCalBar < (scDisplay.MaxPoints*0.1) do begin
          scDisplay.TCalBar := scDisplay.TCalBar*10.0 ;
          end;

    // Channel calibration bars
    for ch := 0 to scDisplay.NumChannels-1 do
        scDisplay.ChanCalBar[ch] :=  scDisplay.ChanGridSpacing[ch] ;

    scDisplay.Print ;
    end;


procedure TMainFrm.mnPrinterSetupClick(Sender: TObject);
// -------------
// Setup printer
// -------------
begin
     PrinterSetupDialog.Execute ;
     end;

procedure TMainFrm.SaveToFile(
          FileName : String
          ) ;
// ----------------------------
// Save chart recording to file
// ----------------------------
var
   Header : array[1..FileHeaderSize] of ansichar ;
   i : Integer ;
   FileHandle : Integer ;
begin

     FileHandle := FileCreate( FileName ) ;
     if FileHandle < 0 then Exit ;

     { Initialise empty header buffer with zero bytes }
     for i := 1 to sizeof(Header) do Header[i] := chr(0) ;

     AppendInt( Header, 'NPOINTS=', NumPointsInBuf ) ;

     AppendInt( Header, 'NMARKERS=', MarkerList.Count ) ;
     for i := 0 to MarkerList.Count-1 do
         begin
         AppendInt( Header, format('MKPOINT%d=',[i]), Integer(MarkerList.Objects[i])) ;
         AppendString( Header, format('MKTEXT%d=',[i]), MarkerList.Strings[i] ) ;
         end ;

     // Write header
     FileWrite( FileHandle, Header, SizeOf(Header)) ;
     // Write chart data
     FileWrite( FileHandle, ADC, NumPointsInBuf*scDisplay.NumChannels*2 ) ;
     // Close file
     FileClose( FileHandle ) ;

     UnSavedData := False ;
     end ;



procedure TMainFrm.scDisplayCursorChange(Sender: TObject);
var
    ch : Integer ;
begin
    if not scDisplay.ChanVisible[0] then scDisplay.ChanVisible[0] := true ;
    ckVm.Checked := scDisplay.ChanVisible[0] ;
    ckIm.Checked := scDisplay.ChanVisible[1] ;
    ckINa.Checked := scDisplay.ChanVisible[2] ;
    ckIK.Checked := scDisplay.ChanVisible[3] ;

    for ch := 0 to scDisplay.NumChannels-1 do if scDisplay.HorizontalCursors[ch] <> 0 then
         scDisplay.HorizontalCursors[ch] := 0 ;

    end;

procedure TMainFrm.LoadFromFile(
          FileName : String
          ) ;
// ------------------------------
// Load chart recording from file
// ------------------------------
var
   Header : array[1..FileHeaderSize] of ansichar ;
   i : Integer ;
   FileHandle : Integer ;
   NumMarkers : Integer ;
   MarkerPoint : Integer ;
   MarkerText : String ;
begin

     NumPointsInBuf := 0 ;

     FileHandle := FileOpen( FileName, fmOpenRead ) ;
     if FileHandle < 0 then Exit ;

     FileSeek( FileHandle, 0, 0 ) ;

     // Read header
     if FileRead(FileHandle, Header, Sizeof(Header)) = Sizeof(Header) then begin

        NewExperiment ;

        ReadInt( Header, 'NPOINTS=', NumPointsInBuf ) ;
        // Keep within ADC buffer size
        NumPointsInBuf := Min( NumPointsInBuf, MaxPoints div scDisplay.NumChannels ) ;

        ReadInt( Header, 'NMARKERS=', NumMarkers ) ;
        MarkerList.Clear ;
        for i := 0 to NumMarkers-1 do
            begin
            ReadInt( Header, format('MKPOINT%d=',[i]), MarkerPoint) ;
            ReadString( Header, format('MKTEXT%d=',[i]), MarkerText ) ;
            MarkerList.AddObject( MarkerText, TObject(MarkerPoint)) ;
            end ;
        end ;

     if NumPointsInBuf > 0 then begin
        FileRead( FileHandle, ADC, NumPointsInBuf*scDisplay.NumChannels*2 ) ;
        end ;

     // Close data file
     FileClose( FileHandle ) ;

     UnsavedData := False ;
     scDisplay.XOffset := -1 ;
     sbDisplay.Position := 0 ;
     sbDisplay.Max := Max(NumPointsInBuf,1) ;
     scDisplay.Invalidate ;

     end ;



procedure TMainFrm.mnCopyImageClick(Sender: TObject);
var
  ch: Integer;
// -----------------------------------------
// Copy image of displayed trace to clipboad
// -----------------------------------------
begin
     scDisplay.TCalBar := 0.01/scDisplay.TScale ;
     while scDisplay.TCalBar < (scDisplay.MaxPoints*0.1) do begin
         scDisplay.TCalBar := scDisplay.TCalBar*10.0 ;
         end;
     for ch := 0 to scDisplay.NumChannels-1 do
         scDisplay.ChanCalBar[ch] :=  scDisplay.ChanGridSpacing[ch] ;

     scDisplay.PrinterFontName := 'Arial' ;
     scDisplay.PrinterFontSize := 10 ;
     scDisplay.MetafileWidth := 1000 ;
     scDisplay.MetafileHeight := 600 ;
     scDisplay.PrinterPenWidth := 2 ;
     scDisplay.CopyImageToClipBoard ;
     end;

procedure TMainFrm.mnLoadExperimentClick(Sender: TObject);
// -------------------------
// Load experiment from file
// -------------------------
begin


    if UnSavedData then begin
        if MessageDlg('Existing experiment will be overwritten! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrNo then Exit ;
        end ;

   OpenDialog.options := [ofPathMustExist] ;
   OpenDialog.FileName := '' ;
   OpenDialog.DefaultExt := DataFileExtension ;
   //OpenDialog.InitialDir := OpenDirectory ;
   OpenDialog.Filter := format( ' Nerve Expt. (*%s)|*%s',
                                [DataFileExtension,DataFileExtension]) ;
   OpenDialog.Title := 'Load Experiment ' ;

   // Open selected data file
   if OpenDialog.execute then LoadFromFile( OpenDialog.FileName ) ;

   end;

procedure TMainFrm.bStimulusOnClick(Sender: TObject);
// --------------
// Start stimulus
// --------------
begin
     bStimulusOn.Enabled := False ;
     bStimulusOff.Enabled := True ;

     Cell.Stim.Start := Cell.t ;
     Cell.Stim.Duration := edStimulusDuration.Value ;
     Cell.Stim.Amplitude := edStimulusCurrent.Value ;
     Cell.Stim.NumStimDone := 0 ;

     end;


procedure TMainFrm.bStimulationOffClick(Sender: TObject);
// -------------
// Stop stimulus
// -------------
begin
     bStimulusOn.Enabled := True ;
     bStimulusOff.Enabled := False ;
     end;


procedure TMainFrm.bNewExperimentClick(Sender: TObject);
// ---------------------
// Select new experiment
// ---------------------
begin
     if UnSavedData then begin
        if MessageDlg('Existing experiment will be erased! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrYes then NewExperiment ;
        end
     else NewExperiment ;
     end;


procedure TMainFrm.mnSaveExperimentClick(Sender: TObject);
// -----------------------
// Save experiment to file
// -----------------------
begin

     { Present user with standard Save File dialog box }
     SaveDialog.options := [ofHideReadOnly,ofPathMustExist] ;
     SaveDialog.FileName := '' ;
     SaveDialog.DefaultExt := DataFileExtension ;
     SaveDialog.Filter := format( '  Nerve Expt. (*%s)|*%s',
                                  [DataFileExtension,DataFileExtension]) ;
     SaveDialog.Title := 'Save Experiment' ;

     if SaveDialog.Execute then SaveToFile( SaveDialog.FileName ) ;

     end ;


procedure TMainFrm.mnSnapDisplayClick(Sender: TObject);
// -----------------------------------------------
// Store a copy of the currently displayed signals
// -----------------------------------------------
begin
     SnapDisplayWindow ;
     end;


procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
// -----------------------------------------------
// Check whether user really wants to stop program
// -----------------------------------------------
begin
     if MessageDlg('Stop EPSim Program! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrYes then CanClose := True
                                   else CanClose := False ;
     end;


procedure TMainFrm.FormCreate(Sender: TObject);
begin
   hodgkin_huxley_squid_axon_model_1952 := Thodgkin_huxley_squid_axon_model_1952.Create ;
    TimerEventRunning := False ;
    end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
     hodgkin_huxley_squid_axon_model_1952.free ;
      end;

procedure TMainFrm.mnExitClick(Sender: TObject);
// ------------
// Stop Program
// ------------
begin
     Close ;
     end;


procedure TMainFrm.mnClearSnapClick(Sender: TObject);
begin
    scDisplay.ClearLines ;
    end;

procedure TMainFrm.mnContentsClick(Sender: TObject);
// -----------------------
//  Help/Contents menu item
//  -----------------------
begin
     ShellExecute(Handle,'open', 'c:\windows\hh.exe',PChar(Application.HelpFile),
     nil, SW_SHOWNORMAL) ;
     end;




procedure TMainFrm.bStimulusOffClick(Sender: TObject);
begin
     bStimulusOn.Enabled := True ;
     bStimulusOff.Enabled := False ;
     end;


procedure TMainFrm.bAddDrugClick(Sender: TObject);
var
    iDrug : Integer ;
    ChartAnnotation : String ;
begin

     iDrug :=  Integer(cbDrug.Items.Objects[cbDrug.ItemIndex]) ;
     Drugs[iDrug].FinalBathConcentration := Drugs[iDrug].FinalBathConcentration
                                            + ExtractFloat( cbConcentration.Text, 0.0 ) ;

     // Add chart annotation
     ChartAnnotation := format('%s= %.3g M',
     [Drugs[iDrug].ShortName,Drugs[iDrug].FinalBathConcentration]) ;
     AddDrugMarker( ChartAnnotation ) ;

      end;


procedure TMainFrm.bStandardSaltSolnClick(Sender: TObject);
// -----------------------------------------------
// Change to standard salt solution in tissue bath
// -----------------------------------------------
begin

     Cell.Ca.FinalCout := Cell.Ca.Standard ;
     end;


procedure TMainFrm.bRemoveAllDrugsClick(Sender: TObject);
// --------------------------
// Remove all drugs from bath
// --------------------------
var
    i : Integer ;
    ChartAnnotation : String ;
begin
     ChartAnnotation := '' ;
     for i := 0 to NumDrugs do
         begin
         Drugs[i].FinalBathConcentration := 0.0 ;
         end ;
     ChartAnnotation := 'Wash' ;
     AddDrugMarker( ChartAnnotation ) ;

     end;

procedure TMainFrm.ckDvDtClick(Sender: TObject);
// -----------------
// Check box changed
// -----------------
begin
    scDisplay.ChanVisible[TCheckBox(Sender).Tag] := TCheckBox(Sender).Checked ;
    end;

procedure TMainFrm.edDisplayWindowKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       begin
       UpdateDisplayWindow ;
       end;
     end;


procedure TMainFrm.edStartAtKeyPress(Sender: TObject; var Key: Char);
// ------------------------------------
// Starting position of display changed
// ------------------------------------
begin
    if Key = #13 then sbDisplay.Position := Round(edStartAt.Value) ;
    end;

procedure TMainFrm.edStimulusCurrentKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then Cell.Stim.Amplitude := edStimulusCurrent.Value ;
    end;

procedure TMainFrm.edStimulusDurationKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then Cell.Stim.Duration := edStimulusDuration.Value ;
    end;

procedure TMainFrm.UpdateDisplayWindow ;
// ---------------------
// Update display window
// ---------------------
var
    MidPoint : Integer ;
begin

    if not bRecord.Enabled then
       begin
       NumPointsDisplayed := 0 ;
       scDisplay.XOffset := Max(NumPointsInBuf - 1,0);
       sbDisplay.Position := scDisplay.XOffset ;
       scDisplay.MaxPoints := Round(edDisplayWindow.Value/(Cell.dt*Cell.NumStepsPerDisplayPoint));
       scDisplay.xMin := 0 ;
       scDisplay.xMax := scDisplay.MaxPoints-1 ;
       scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
       end
     else
       begin
       MidPoint := scDisplay.XOffset + (scDisplay.MaxPoints div 2) ;
       scDisplay.MaxPoints := Round(edDisplayWindow.Value/(Cell.dt*Cell.NumStepsPerDisplayPoint));
       scDisplay.xMin := 0 ;
       scDisplay.xMax := scDisplay.MaxPoints-1 ;

       scDisplay.XOffset := Max(MidPoint - (scDisplay.MaxPoints div 2),0) ;
       scDisplay.XOffset := Min( scDisplay.XOffset, NumPointsInBuf - scDisplay.MaxPoints + 1) ;
       sbDisplay.Position := scDisplay.XOffset ;
       scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
       scDisplay.NumPoints := Min( scDisplay.MaxPoints,
                                   NumPointsInBuf - scDisplay.XOffset) ;
       scDisplay.VerticalCursors[0] := scDisplay.MaxPoints div 20 ;
       scDisplay.VerticalCursors[1] := scDisplay.MaxPoints div 2 ;


       sbDisplay.LargeChange := Max(scDisplay.MaxPoints div 100,1) ;
       sbDisplay.Max := Max(NumPointsInBuf - scDisplay.MaxPoints,2);
       edStartAt.Value := scDisplay.XOffset ;

       // Add annotations to chart
       AddChartAnnotations ;
       end;
     scDisplay.Invalidate ;

     end ;

procedure TMainFrm.SnapDisplayWindow ;
// ------------------------------------------------------
// Snap and store a copy of the displayed trace on screen
// ------------------------------------------------------
var
    i,j,ch,iLine : Integer ;
    x,y : single ;
begin

    scDisplay.ClearLines ;

    for ch := 0 to scDisplay.NumChannels-1 do
        begin
        iLine := scDisplay.CreateLine( ch, clRed, psSolid, 1 ) ;
        j := sbDisplay.Position*scDisplay.NumChannels + ch ;
        x := 0.0 ;
        for i := 0 to scDisplay.NumPoints-1 do
          begin
          y := ADC[j] ;
          scDisplay.AddPointToLine( iLine, x,y) ;
          j := j + scDisplay.NumChannels ;
          x := x + 1.0 ;
        end;
        end;
    scDisplay.invalidate ;
    end;

end.
