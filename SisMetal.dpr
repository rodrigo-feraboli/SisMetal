program SisMetal;

uses
  Forms,
  USistema in 'USistema.pas' {FSistema},
  UDados in 'UDados.pas' {Dados: TDataModule},
  UVenProdutos in 'UVenProdutos.pas' {FVenProdutos},
  UAbout in 'UAbout.pas' {FAboutBox},
  UAltereSenha in 'UAltereSenha.pas' {FAltereSenha},
  UBanco in 'UBanco.pas' {FBanco},
  UCFOP in 'UCFOP.pas' {FCFOP},
  UCidades in 'UCidades.pas' {FCidades},
  UCompras in 'UCompras.pas' {FCompras},
  UComProdutos in 'UComProdutos.pas' {FComProdutos},
  UCondPgto in 'UCondPgto.pas' {FCondPgto},
  UCPagar in 'UCPagar.pas' {FCPagar},
  UCReceber in 'UCReceber.pas' {FCReceber},
  UEstados in 'UEstados.pas' {FEstados},
  UIntegraCont in 'UIntegraCont.pas' {FIntegraCont},
  UItensOrcamento in 'UItensOrcamento.pas' {FItensOrcamento},
  UItensOrdemCompra in 'UItensOrdemCompra.pas' {FItensOrdemCompra},
  ULocProduto in 'ULocProduto.pas' {FLocProduto},
  ULocCP in 'ULocCP.pas' {FLocCP},
  ULocCR in 'ULocCR.pas' {FLocCR},
  ULocOC in 'ULocOC.pas' {FLocOC},
  ULogin in 'ULogin.pas' {FLogin},
  UMovEst in 'UMovEst.pas' {FMovEst},
  UOrcamento in 'UOrcamento.pas' {FOrcamento},
  UOrdemCompra in 'UOrdemCompra.pas' {FOrdemCompra},
  UProdutos in 'UProdutos.pas' {FProdutos},
  UTipoClassFiscal in 'UTipoClassFiscal.pas' {FTipoClassFiscal},
  UUnidades in 'UUnidades.pas' {FUnidades},
  UUsuarios in 'UUsuarios.pas' {FUsuarios},
  UVendas in 'UVendas.pas' {FVendas},
  URelTipoClass in 'URelTipoClass.pas' {FRelTipoClass},
  URelCidades in 'URelCidades.pas' {FRelCidades},
  UBackUp in 'UBackUp.pas' {FBackUp},
  UConfig in 'UConfig.pas' {FConfig},
  URelCFOP in 'URelCFOP.pas' {FRelCFOP},
  URelCondPgto in 'URelCondPgto.pas' {FRelCondPgto},
  URelUnidades in 'URelUnidades.pas' {FRelUnidades},
  URelEstados in 'URelEstados.pas' {FRelEstados},
  URelTranportadoras in 'URelTranportadoras.pas' {FRelTranportadoras},
  URelFichaGenerico in 'URelFichaGenerico.pas' {FRelFichaGenerico},
  URelProdutos in 'URelProdutos.pas' {FRelProduto},
  ULocGenerico in 'ULocGenerico.pas' {FLocGenerico},
  ULocBanco in 'ULocBanco.pas' {FLocBanco},
  URelBanco in 'URelBanco.pas' {FRelBanco},
  UImportaOC in 'UImportaOC.pas' {FImportaOC},
  ULocCompras in 'ULocCompras.pas' {FLocCompras},
  ULocOrc in 'ULocOrc.pas' {FLocOrc},
  UImportaOrc in 'UImportaORC.pas' {FImportaOrc},
  UImpDuplicatas in 'UImpDuplicatas.pas' {FImpDuplicatas},
  UGenerico in 'UGenerico.pas' {FGenerico},
  URelMovEst in 'URelMovEst.pas' {FRelMovEst},
  URelComVen in 'URelComVen.pas' {FRelComVen},
  URelCRCP in 'URelCRCP.pas' {FRelCRCP},
  URelDuplVendas in 'URelDuplVendas.pas' {FRelDuplVendas},
  URelNF in 'URelNF.pas' {FRelNF},
  URelGeraOrc in 'URelGeraOrc.pas' {FRelGeraOrc},
  URelGenerico in 'URelGenerico.pas' {FRelGenerico},
  ULocVendas in 'ULocVendas.pas' {FLocVendas},
  URelORCOC in 'URelORCOC.pas' {FRelORCOC};

{$R *.res}

begin
  try
    Application.Initialize;
    Application.Title := 'SisMetal';
  //  Application.CreateForm(TDados, Dados);
  FLogin := TFLogin.Create(Application);
//    FLogin.ShowModal;
  //Application.Run;
  except
  end;
end.
