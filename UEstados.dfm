?
 TFESTADOS 0?  TPF0	TFEstadosFEstadosLeftTop? AutoSize	BorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaptionCadastro de EstadosClientHeight? ClientWidth?Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameMS Sans Serif
Font.Style 
KeyPreview	Menu	MainMenu1OldCreateOrderPositionpoDesktopCenterOnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDown
OnKeyPressFormKeyPressPixelsPerInch`
TextHeight TPanelPanel1Left Top? Width?Height%AlignalBottom
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder  TBitBtn
BitBtnNovoLeftTopWidthPHeightHintInserir EstadoCaption&NovoParentShowHintShowHint	TabOrder OnClickBitBtnNovoClick
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 3333?33;3?3333?;?w{?w{?7????s3?    33wwwwww330????337?333330????337?333330????337?333330????3???333????????ww?333w;??????7w?3??ww30??  337?3wws330???3337?37?330??3337?3w?330?? ;?337??w7?3?  3?33www3w?;?3;?3;?7s37s37s?33;333;s3373337	NumGlyphs  TBitBtnBitBtnAlterarLeftjTopWidthPHeightHintAlterar EstadoCaptionA&lterarParentShowHintShowHint	TabOrderOnClickBitBtnAlterarClick
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 333     333wwwww333??????????? 0  ? ?w?ww?sw7??????ws3?33?࿿ ???w?3ws??7???????w?3???7࿿  ?w?3wwss7????????w?????37??   ??w?wwws?? ? ?? ?ws?w73w730 ???37wss3??330???  33773?ww33??33s7s730???37?33s3	?? 33ws??w3303   3373wwws3	NumGlyphs  TBitBtnBitBtnExcluirLeft? TopWidthPHeightHintExcluir EstadoCaptionE&xcluirParentShowHintShowHint	TabOrderOnClickBitBtnExcluirClick
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 30    3337wwww?330?wwp3337?????330???p3337?????330??pp3337?????330???p3337?????330??pp3337?????330???p333???????00??pp0377?????33 ???p33w????s330??pp3337?????330pppp3337?????33     33wwwww33??ww33????33     33wwwwws3330wp333337???33330  333337ww333	NumGlyphs  TBitBtnBitBtnGravarLeft&TopWidthPHeightHintGravar EstadoCaptionGra&varParentShowHintShowHint	TabOrderOnClickBitBtnGravarClick
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 333333333???????0 www 37wwwwww?  ??? 37??7?  ?? 37?7?  ?? 37???  ??? 37www3       ??????       wwwww ???? 3333 ???? 3333 ???? 3333 ???? 3333 ???? 3333 ????3333w ???? s????s0	???? 37wwwwww3	NumGlyphs  TBitBtn
BitBtnSairLeft?TopWidthPHeightHintCancelar EstadoCaption&SairParentShowHintShowHint	TabOrderOnClickBitBtnSairClick
Glyph.Data
z  v  BMv      v   (                                    ?  ?   ?? ?   ? ? ??   ???   ?  ?   ?? ?   ? ? ??  ??? 3333333333333333333333333??3?3??3??73??3w??ws39?0 9?337w?w?w333????333wsws3339?9?33337w7w33333?	?33333ss3333313333337w?33333??333337w??3339? ?333377w7?333?? ??333w7w7?39?0 9?337w7w?w?3??73??3ws3s3ws333333333333333333333333333333333333333333333333	NumGlyphs   TPanelPanel2Left Top6Width?HeightOAlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder TLabelLabel2LeftITopWidth!HeightCaption   Código  TLabelLabel1LeftITopWidth!HeightCaptionEstado  TLabelLabel3Left\Top6WidthHeightCaptionUF  TLabelLabel4LeftGTop5Width6HeightCaption
Perc. ICMS  TDBEditDBEdit1LeftnTopWidth.Height	DataField	CODESTADO
DataSource	DSEstadosReadOnly	TabOrder   TDBEditDBEdit2LeftnTopWidthAHeight	DataFieldNOME
DataSource	DSEstadosTabOrder  TDBEditDBEdit3LeftnTop3Width.HeightCharCaseecUpperCase	DataFieldUF
DataSource	DSEstadosTabOrder  TDBEditDBEdit4Left?Top2Width.Height	DataFieldPERCICMS
DataSource	DSEstados	MaxLengthTabOrder   TPanelPanel3Left Top Width?Height6AlignalTop
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder TDBNavigatorDBNavigator1LeftTopWidth? Height
DataSource	DSEstadosVisibleButtonsnbFirstnbPriornbNextnbLast	nbRefresh TabOrder    	TMainMenu	MainMenu1LeftTop 	TMenuItemArquivo1CaptionArquivo 	TMenuItemSair1CaptionSairOnClickBitBtnSairClick   	TMenuItem
Relatrios1Caption   Relatórios 	TMenuItemEstados1CaptionEstadosOnClickEstados1Click    TDataSource	DSEstadosDataSet	TbEstadosOnStateChangeDSEstadosStateChangeLefthTop  
TIBDataSet	TbEstadosDatabaseDados.DatabaseTransactionDados.TransactionDeleteSQL.Stringsdelete from ESTADOSwhere  CODESTADO = :OLD_CODESTADO InsertSQL.Stringsinsert into ESTADOS!  (CODESTADO, NOME, UF, PERCICMS)values%  (:CODESTADO, :NOME, :UF, :PERCICMS) RefreshSQL.StringsSelect   CODESTADO,  NOME,  UF,
  PERCICMSfrom ESTADOS where  CODESTADO = :CODESTADO SelectSQL.StringsSELECT * FROM ESTADOS ModifySQL.Stringsupdate ESTADOSset  CODESTADO = :CODESTADO,  NOME = :NOME,  UF = :UF,  PERCICMS = :PERCICMSwhere  CODESTADO = :OLD_CODESTADO GeneratorField.Field	CODESTADOGeneratorField.GeneratorGEN_ESTADOS_IDLeftHTop
 TIntegerFieldTbEstadosCODESTADO	FieldName	CODESTADOOriginESTADOS.CODESTADORequired	  TIBStringFieldTbEstadosNOME	FieldNameNOMEOriginESTADOS.NOMESizeK  TIBStringFieldTbEstadosUF	FieldNameUFOrigin
ESTADOS.UFSize  TSmallintFieldTbEstadosPERCICMS	FieldNamePERCICMSOriginESTADOS.PERCICMS    