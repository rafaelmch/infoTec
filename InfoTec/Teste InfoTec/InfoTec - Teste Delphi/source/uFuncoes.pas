unit uFuncoes;

interface

uses
  VCL.Dialogs, System.SysUtils, System.Variants, System.Classes,
  REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait;

function atualizarRegistrosCadastro(tipo : String; tabela : TFDQuery) : String;

implementation

//atualizar o label com o registro atual e o total de registros no
//cadastro passado por par�metro
function atualizarRegistrosCadastro(tipo : String; tabela : TFDQuery) : String;
var
  ls_texto : String;
begin
  if tipo = 'PROD' then
  begin
    ls_texto := 'Produto ' + IntToStr(tabela.RecNo) + ' de ' + IntToStr(tabela.RecordCount);
  end
  else if tipo = 'VENDA' then
  begin
    ls_texto := 'Venda ' + IntToStr(tabela.RecNo) + ' de ' + IntToStr(tabela.RecordCount);
  end;

  //retorna n�mero do registro do total de registros encontrados
  atualizarRegistrosCadastro := ls_texto;
end;

end.
