unit URelPessoasContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDm1, rsDBUtils, jpeg,
  RLRichText, db, uDmRel, ValorPor;

type
  TfRelPessoasContrato = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand6: TRLBand;
    RLLabel47: TRLLabel;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLNome: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand2: TRLBand;
    RLMemo2: TRLMemo;
    RLBand3: TRLBand;
    RLMemo3: TRLMemo;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw4: TRLDraw;
    ValorPorExtenso2: TValorPorExtenso;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText24: TRLDBText;
    RLBand5: TRLBand;
    RLLabel31: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel32: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelPessoasContrato: TfRelPessoasContrato;

implementation

uses uDmCons, uUtil;

{$R *.dfm}

procedure TfRelPessoasContrato.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelPessoasContrato.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
end;

procedure TfRelPessoasContrato.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLNome.Caption := fdm1.tPessoaNOME.AsString + ', doravante denominado aluno.';
  RLMemo1.Lines.Text := 'As partes acima qualificadas pelo presente instrumento ajustam e contratam a presta��o de servi�os conforme cl�usulas e condi��es seguintes:';
end;

procedure TfRelPessoasContrato.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  //RLMemo2.Lines.Add(Fdm1.tPessoaDESCCLAUSULA.Value);
  RLMemo2.Lines.Add('CL�USULA 1� - OBJETO');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O CENTRO DE FORMA��O ministrar� aulas com o objetivo de formar, aperfei�oar e capacitar profissionais para o desempenho das fun��es na �rea de seguran�a privada, conforme disposi��es contidas' +
                        '  na Portaria n� 3.233 de 10 de Dezembro de 2012 do Departamento de Pol�cia Federal.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 2� - DESCRI��O DO CURSO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O curso ministrado ser� o de ' + fDM1.tPessoa_CursoNOME.AsString + ' para vigilantes e dever� conter as disciplinas e a respectivas carga hor�ria previstas no curr�culo conforme determinada a legisla��o.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 3� - ENCARGOS E RESPONSABILIDADES DO CENTRO DE FORMA��O.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 1�: Realizar todos os tr�mites legais de documenta��o para fins de registro e homologa��o do certificado do aluno aprovado junto ao Departamento de Pol�cia Federal.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 2�: Durante o curso, fornecer equipamentos, materiail did�tico, armamento, muni��es e todas as demais condi��es que se fizerem necess�rias para a aprendizagem do aluno.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 3�: Ministrar integralmente as disciplinas previstas no curr�culo legal do curso.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 4� - ENCARGOS E RESPONSABILIDADES DO COTNRATANTE.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 1�: Cumprir as normas contidas no Regulamento Interno do CENTRO DE FORMA��O, principalmente no que ' +
                        'tange � disciplina dentro e fora da sala de aula, pontualidade, assiduidade, zelo das instala��es, materiais e equipamentos utilizados na aprendizagem.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 2�: Zelar pelos materiais e equipamentos utilizados no curso, comprometendo-se a devolv�-los nas condi��es que receberam.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 3�: Ressarcir nos casos de avaria, inutiliza��o ou perda dos materiais e equipamentos recebidos para fins de aprendizagem.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 5� - DO CANCELAMENTO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 1�: O CENTRO DE FORMA��O poder� rescindir o contrato, a qualquer tempo, independentemente de aviso ' +
                        'pr�vio, no caso do aluno infringir as normas previstas no Regulamento Interno, n�o lhe cabendo, neste caso, qualquer indeniza��o ou devolu��o do valor pago pelo curso.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 2�: Caso o aluno venha a desistir do curso, antes mesmo do seu in�cio, ou rescindir o presente contrato, por qualquer motivo, n�o ser�';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' efetuado qualquer ressarcimento de valores pagos, tendo em vista as despesas da Contratada com reserva de vagas, material e outros.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 6� - DO PAGAMENTO.');
  ValorPorExtenso2.Valor := DM1.tPessoa_CursoVLRCURSO.AsFloat;
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  Pela execu��o dos servi�os ora contratados o aluno pagar� ao CENTRO DE FORMA��O  a import�ncia de R$ ' +
                        FormatFloat('###,###,##0.00',DM1.tPessoa_CursoVLRCURSO.AsFloat) + ' (' + ValorPorExtenso2.Texto + ').';

  if fdm1.tPessoa_CursoENTRADA.AsCurrency > 0 then
  begin
    ValorPorExtenso2.Valor := DM1.tPessoa_CursoENTRADA.AsFloat;
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento ser� realizado por meio de ' + fdm1.tPessoa_CursoFORMAPGTO.AsString + ' e no prazo de ' +
                          Fdm1.tPessoa_CursoCONDPGTO.AsString + ', sendo uma entrada de R$ ' + FormatFloat('0.00',fdm1.tPessoa_CursoENTRADA.AsCurrency) +
                          ' (' + ValorPorExtenso2.Texto + ').';
  end
  else
  begin
    RLMemo2.Lines.Add('');
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento ser� realizado por meio de ' + fdm1.tPessoa_CursoFORMAPGTO.AsString + ' e no prazo de ' +
                          Fdm1.tPessoa_CursoCONDPGTO.AsString + '.';
  end;

  DmCons.qParcelaCurso.Close;
  DmCons.ParcelaCurso.ParamByName('NN').AsInteger := Fdm1.tPessoa_CursoID.AsInteger;
  DmCons.qParcelaCurso.Open;
  if DmCons.qParcelaCurso.RecordCount > 0 then
  begin
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento do saldo ser� conforme o que segue: ';
    while not DmCons.qParcelaCurso.Eof do
    begin
      RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' PARCELA: ' + DmCons.qParcelaCursoPARCELA.AsString +
                            ' VCTO: ' + FormatDateTime('DD/MM/YYYY',DmCons.qParcelaCursoDTVENCIMENTO.AsDateTime) +
                            ' VALOR: R$' + FormatFloat('0.00',DmCons.qParcelaCursoVLRVENCIMENTO.AsCurrency);
      DmCons.qParcelaCurso.Next;
    end;
  end;

  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 1�: Na hip�tese de qualquer pagamento em atraso ser� sempre aplicada corre��o monet�ria, multa de 2% (dois por cento) e juros de mora de 1% (um por cento) ao m�s.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 2�: Caso o t�tulo (boleto banc�rio) n�o seja pago at� o terceiro dia ap�s o vencimento, o Banco efetuar� automaticamente a cobran�a em cart�rio. N�o havendo a quita��o, ficar� pass�vel de protesto.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 7� - CONDI��ES GERAIS.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 1�: O CENTRO DE FORMA��O n�o se responsabilizar� por qualquer dano f�sico que o aluno venha sofrer em caso de acidente durante o curso.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 2�: O fato de concluir com m�dia e aproveitamento satisfat�rio n�o obriga, nem vincula o CENTRO DE FORMA��O a admitir, fornecer ou indicar empresas interessadas em seus alunos rec�m-formados.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 3�: O aluno comprova estar gozando de perfeita sa�de f�sica e mental, conforme apresenta��o do atestado m�dico e psicol�gico.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Par�grafo 4�: O aluno declara ter lido e compreendido todos os termos do Regimento Interno, o qual faz parte do presente contrato.;';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 8� - PRAZO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  O presente contrato ter� in�cio dia ' + DM1.tPessoa_CursoDTINICIO.AsString + ' e seu t�rmino ser� dia ' + DM1.tPessoa_CursoDTFINAL.AsString;
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CL�USULA 9� - COMPET�NCIA.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  As partes elegem o Foro da cidade de Novo Hamburgo/RS para dirimir quaisquer controv�rsias oriundas do presente instrumento.';
end;

procedure TfRelPessoasContrato.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Text := 'E Por assim estarem justos e contratados o presente instrumento em duas vias de igual teor e forma na';
  RLMemo3.Lines.Text := RLMemo3.Lines.Text + 'presen�a de duas testemunhas para a produ��o de seus efeitos jur�dicos e legais.';
  
end;

procedure TfRelPessoasContrato.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel40.Caption := vUsuario2;
end;

end.
