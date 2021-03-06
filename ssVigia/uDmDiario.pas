unit uDmDiario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmDiario = class(TDataModule)
    sdsAgente: TSQLDataSet;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    dsAgente: TDataSource;
    sdsBairro: TSQLDataSet;
    dspBairro: TDataSetProvider;
    cdsBairro: TClientDataSet;
    dsBairro: TDataSource;
    sdsViatura: TSQLDataSet;
    dspViatura: TDataSetProvider;
    cdsViatura: TClientDataSet;
    dsViatura: TDataSource;
    sdsCelular: TSQLDataSet;
    dspCelular: TDataSetProvider;
    cdsCelular: TClientDataSet;
    dsCelular: TDataSource;
    sdsDiario: TSQLDataSet;
    dspDiario: TDataSetProvider;
    cdsDiario: TClientDataSet;
    dsDiario: TDataSource;
    dsmDiario: TDataSource;
    sdsDiarioAlarme: TSQLDataSet;
    cdsDiarioAlarme: TClientDataSet;
    dsDiarioAlarme: TDataSource;
    sdsDiarioID: TIntegerField;
    sdsDiarioDATA: TDateField;
    sdsDiarioTURNO: TStringField;
    sdsDiarioREVISADO_HORA: TTimeField;
    sdsDiarioREVISADO_POR: TStringField;
    sdsDiarioOPERADOR_RADIO: TStringField;
    sdsDiarioOBS: TMemoField;
    sdsDiarioOBS_REVISAO: TMemoField;
    sdsDiarioRV_ALARME: TStringField;
    sdsDiarioRV_ESPECIAL: TStringField;
    sdsDiarioRV_BAIRRO: TStringField;
    sdsDiarioRV_CAMERA: TStringField;
    sdsDiarioRV_PORTARIA: TStringField;
    sdsDiarioRV_RONDA: TStringField;
    sdsDiarioRV_VIATURA: TStringField;
    sdsDiarioFC_ALARME: TStringField;
    sdsDiarioFC_ESPECIAL: TStringField;
    sdsDiarioFC_BAIRRO: TStringField;
    sdsDiarioFC_CAMERA: TStringField;
    sdsDiarioFC_PORTARIA: TStringField;
    sdsDiarioFC_RONDA: TStringField;
    sdsDiarioFC_VIATURA: TStringField;
    sdsDiarioOK_ALARME: TStringField;
    sdsDiarioOK_BAIRRO: TStringField;
    sdsDiarioOK_CAMERA: TStringField;
    sdsDiarioOK_ESPECIAL: TStringField;
    sdsDiarioOK_PORTARIA: TStringField;
    sdsDiarioOK_RONDA: TStringField;
    sdsDiarioOK_VIATURA: TStringField;
    sdsDiarioCons: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    TimeField1: TTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    dspDiarioCons: TDataSetProvider;
    cdsDiarioCons: TClientDataSet;
    dsDiarioCons: TDataSource;
    sdsDiarioBairro: TSQLDataSet;
    cdsDiarioBairro: TClientDataSet;
    dsDiarioBairro: TDataSource;
    cdsDiarioID: TIntegerField;
    cdsDiarioDATA: TDateField;
    cdsDiarioTURNO: TStringField;
    cdsDiarioREVISADO_HORA: TTimeField;
    cdsDiarioREVISADO_POR: TStringField;
    cdsDiarioOPERADOR_RADIO: TStringField;
    cdsDiarioOBS: TMemoField;
    cdsDiarioOBS_REVISAO: TMemoField;
    cdsDiarioRV_ALARME: TStringField;
    cdsDiarioRV_ESPECIAL: TStringField;
    cdsDiarioRV_BAIRRO: TStringField;
    cdsDiarioRV_CAMERA: TStringField;
    cdsDiarioRV_PORTARIA: TStringField;
    cdsDiarioRV_RONDA: TStringField;
    cdsDiarioRV_VIATURA: TStringField;
    cdsDiarioFC_ALARME: TStringField;
    cdsDiarioFC_ESPECIAL: TStringField;
    cdsDiarioFC_BAIRRO: TStringField;
    cdsDiarioFC_CAMERA: TStringField;
    cdsDiarioFC_PORTARIA: TStringField;
    cdsDiarioFC_RONDA: TStringField;
    cdsDiarioFC_VIATURA: TStringField;
    cdsDiarioOK_ALARME: TStringField;
    cdsDiarioOK_BAIRRO: TStringField;
    cdsDiarioOK_CAMERA: TStringField;
    cdsDiarioOK_ESPECIAL: TStringField;
    cdsDiarioOK_PORTARIA: TStringField;
    cdsDiarioOK_RONDA: TStringField;
    cdsDiarioOK_VIATURA: TStringField;
    cdsDiariosdsDiarioBairro: TDataSetField;
    cdsDiariosdsDiarioAlarme: TDataSetField;
    cdsDiarioAlarmeDIARIO_ID: TIntegerField;
    cdsDiarioAlarmePESSOA_ID: TIntegerField;
    cdsDiarioAlarmeID: TIntegerField;
    cdsDiarioAlarmeAGENTE_ID: TIntegerField;
    cdsDiarioAlarmeHORA: TTimeField;
    cdsDiarioAlarmeSA: TStringField;
    cdsDiarioAlarmeCA: TStringField;
    cdsDiarioAlarmeAPBM: TStringField;
    cdsDiarioBairroDIARIO_ID: TIntegerField;
    cdsDiarioBairroBAIRRO_ID: TIntegerField;
    cdsDiarioBairroVIATURA_ID: TIntegerField;
    cdsDiarioBairroHORA: TTimeField;
    cdsDiarioBairroOBS: TStringField;
    cdsDiarioBairroTIPO: TStringField;
    sdsDiarioCelular: TSQLDataSet;
    cdsDiarioCelular: TClientDataSet;
    dsDiarioCelular: TDataSource;
    cdsDiariosdsDiarioCelular: TDataSetField;
    cdsDiarioCelularDIARIO_ID: TIntegerField;
    cdsDiarioCelularCELULAR_ID: TIntegerField;
    cdsDiarioCelularCREDITO: TFMTBCDField;
    sdsDiarioPortaria: TSQLDataSet;
    cdsDiarioPortaria: TClientDataSet;
    dsDiarioPortaria: TDataSource;
    sdsDiarioRonda: TSQLDataSet;
    cdsDiarioRonda: TClientDataSet;
    dsDiarioRonda: TDataSource;
    sdsDiarioViatura: TSQLDataSet;
    cdsDiarioViatura: TClientDataSet;
    dsDiarioViatura: TDataSource;
    sdsDiarioEspecial: TSQLDataSet;
    cdsDiarioEspecial: TClientDataSet;
    dsDiarioEspecial: TDataSource;
    cdsDiariosdsDiarioEspecial: TDataSetField;
    cdsDiariosdsDiarioViatura: TDataSetField;
    cdsDiariosdsDiarioRonda: TDataSetField;
    cdsDiariosdsDiarioPortaria: TDataSetField;
    cdsDiarioEspecialDIARIO_ID: TIntegerField;
    cdsDiarioEspecialCLIENTE_ID: TIntegerField;
    cdsDiarioEspecialID: TIntegerField;
    cdsDiarioEspecialMOTIVO: TStringField;
    cdsDiarioEspecialAGENTE_ID: TIntegerField;
    cdsDiarioEspecialSA: TStringField;
    cdsDiarioEspecialPROCEDIMENTO: TStringField;
    cdsDiarioEspecialAPBM: TStringField;
    cdsDiarioRondaDIARIO_ID: TIntegerField;
    cdsDiarioRondaPESSOA_ID: TIntegerField;
    cdsDiarioRondaVIATURA_ID: TIntegerField;
    cdsDiarioRondaHORA: TTimeField;
    cdsDiarioRondaOBS: TStringField;
    cdsDiarioRondaTIPO: TStringField;
    cdsDiarioPortariaDIARIO_ID: TIntegerField;
    cdsDiarioPortariaID: TIntegerField;
    cdsDiarioPortariaCLIENTE_ID: TIntegerField;
    cdsDiarioPortariaHORA_INI: TTimeField;
    cdsDiarioPortariaOBS: TStringField;
    cdsDiarioPortariaHORA_FIM: TTimeField;
    cdsDiarioPortariaAGENTE_ID: TIntegerField;
    cdsDiarioPortariaHR_CHEGADA: TTimeField;
    cdsDiarioPortariaHR_SAIDA: TTimeField;
    cdsViaturaID: TIntegerField;
    cdsViaturaATIVA: TStringField;
    cdsViaturaPLACA: TStringField;
    cdsViaturaKM: TIntegerField;
    cdsBairroID: TIntegerField;
    cdsBairroNOME: TStringField;
    cdsBairroID_CIDADE: TIntegerField;
    cdsCelularID: TIntegerField;
    cdsCelularOPERADORA: TStringField;
    cdsCelularNUMERO: TStringField;
    cdsDiarioConsID: TIntegerField;
    cdsDiarioConsDATA: TDateField;
    cdsDiarioConsTURNO: TStringField;
    cdsDiarioConsREVISADO_HORA: TTimeField;
    cdsDiarioConsREVISADO_POR: TStringField;
    cdsDiarioConsOBS: TMemoField;
    cdsAgenteCODIGO: TIntegerField;
    cdsAgenteNOME: TStringField;
    sdsDiarioViaturaDIARIO_ID: TIntegerField;
    sdsDiarioViaturaVIATURA_ID: TIntegerField;
    sdsDiarioViaturaAGENTE_ID: TIntegerField;
    sdsDiarioViaturaKM_INICIAL: TIntegerField;
    sdsDiarioViaturaKM_FINAL: TIntegerField;
    sdsDiarioViaturaOBS: TStringField;
    cdsDiarioViaturaDIARIO_ID: TIntegerField;
    cdsDiarioViaturaVIATURA_ID: TIntegerField;
    cdsDiarioViaturaAGENTE_ID: TIntegerField;
    cdsDiarioViaturaKM_INICIAL: TIntegerField;
    cdsDiarioViaturaKM_FINAL: TIntegerField;
    cdsDiarioViaturaOBS: TStringField;
    sdsDiarioCelularDIARIO_ID: TIntegerField;
    sdsDiarioCelularCELULAR_ID: TIntegerField;
    sdsDiarioCelularCREDITO: TFMTBCDField;
    sdsDiarioViaturaAGENTE: TStringField;
    sdsDiarioViaturaPLACA: TStringField;
    cdsDiarioViaturaAGENTE: TStringField;
    cdsDiarioViaturaPLACA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    ctDiario: String;
    procedure Posicionar(vId: Integer);
  public
    { Public declarations }
    procedure pPosicionar(vId: Integer);
    procedure pInserir;
    procedure pBairros;
    procedure pCelulares;
    procedure pViaturas;
  end;

var
  dmDiario: TdmDiario;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TdmDiario }

procedure TdmDiario.Posicionar(vId: Integer);
begin
  cdsDiario.Close;
  sdsDiario.CommandText := ctDiario + ' WHERE ID = ' + IntToStr(vId);
  cdsDiario.Open;
end;

procedure TdmDiario.DataModuleCreate(Sender: TObject);
begin
  ctDiario := sdsDiario.CommandText;

  cdsCelular.Open;
  cdsViatura.Open;
  cdsAgente.Open;
  cdsBairro.Open;
end;

procedure TdmDiario.pInserir;
begin
  pPosicionar(-1);
  cdsDiario.Insert;
  cdsDiarioID.AsInteger    := dmDatabase.ProximaSequencia('VIG_DIARIO',vFilial);
  cdsDiarioDATA.AsDateTime := Date;

  pCelulares;
  pViaturas;
  pBairros;
end;

procedure TdmDiario.pPosicionar(vId: Integer);
begin
  cdsDiario.Close;
  sdsDiario.CommandText := ctDiario + ' WHERE ID = ' + IntToStr(vId);
  cdsDiario.Open;
end;

procedure TdmDiario.pBairros;
begin
  cdsBairro.First;
  while not cdsBairro.Eof do
  begin
    cdsDiarioBairro.Insert;
    cdsDiarioBairroDIARIO_ID.AsInteger := cdsDiarioID.AsInteger;
    cdsDiarioBairroBAIRRO_ID.AsInteger := cdsBairroID.AsInteger;
    cdsDiarioBairro.Post;
    cdsBairro.Next;
  end;
end;

procedure TdmDiario.pCelulares;
begin
  cdsCelular.First;
  while not cdsCelular.Eof do
  begin
    cdsDiarioCelular.Insert;
    cdsDiarioCelularDIARIO_ID.AsInteger  := cdsDiarioID.AsInteger;
    cdsDiarioCelularCELULAR_ID.AsInteger := cdsCelularID.AsInteger;
    cdsDiarioCelular.Post;
    cdsCelular.Next;
  end;
end;

procedure TdmDiario.pViaturas;
begin
  cdsViatura.First;
  while not cdsViatura.Eof do
  begin
    cdsDiarioViatura.Insert;
    cdsDiarioViaturaDIARIO_ID.AsInteger  := cdsDiarioID.AsInteger;
    cdsDiarioViaturaVIATURA_ID.AsInteger := cdsViaturaID.AsInteger;
    cdsDiarioViatura.Post;
    cdsViatura.Next;
  end;
end;

end.
