unit DiplomQueryUnit;

interface
uses ZDataset;
type
  TDiplomZQuery=class(TZQuery)
  procedure StartTransaction;
  procedure CommitTransaction;
  procedure RollbackTransaction;
  function GetLastInserId:integer;

  end;
implementation
  procedure TDiplomZQuery.StartTransaction;
  begin
    self.SQL.Text:='START TRANSACTION';
    if self.Connection.Protocol='sqlite-3' then self.SQL.Text:='BEGIN TRANSACTION';
    self.ExecSQL;
  end;
  procedure TDiplomZQuery.CommitTransaction;
  begin
    self.SQL.Text:='COMMIT';
    if self.Connection.Protocol='sqlite-3' then self.SQL.Text:='COMMIT TRANSACTION';
    self.ExecSQL;
  end;
  procedure TDiplomZQuery.RollbackTransaction;
  begin
    self.SQL.Text:='ROLLBACK';
    if self.Connection.Protocol='sqlite-3' then self.SQL.Text:='ROLLBACK TRANSACTION';
    self.ExecSQL;

  end;
  function TDiplomZQuery.GetLastInserId:integer;
  begin
    self.sql.Text:='SELECT last_insert_id() as id';
    if self.Connection.Protocol='sqlite-3' then self.SQL.Text:='SELECT last_insert_rowid() as id';;
    self.ExecSQL;
    self.Active:=true;
    result:=self.FieldValues['id'];
    self.Active:=false;
  end;

end.
