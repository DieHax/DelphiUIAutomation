{***************************************************************************}
{                                                                           }
{           DelphiUIAutomation                                              }
{                                                                           }
{           Copyright 2015 JHC Systems Limited                              }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  Licensed under the Apache License, Version 2.0 (the "License");          }
{  you may not use this file except in compliance with the License.         }
{  You may obtain a copy of the License at                                  }
{                                                                           }
{      http://www.apache.org/licenses/LICENSE-2.0                           }
{                                                                           }
{  Unless required by applicable law or agreed to in writing, software      }
{  distributed under the License is distributed on an "AS IS" BASIS,        }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. }
{  See the License for the specific language governing permissions and      }
{  limitations under the License.                                           }
{                                                                           }
{***************************************************************************}
unit StringGridRow;

interface

uses
  ActiveX,
  UIAutomationCore_TLB, classes;

type
  TStringGridRow = class(TInterfacedObject,
          IValueProvider,
          ISelectionItemProvider,
//          IGridItemProvider,
          IRawElementProviderSimple)
  strict private
    FRow : integer;
    FGrid : TComponent;
    FSelected : boolean;
  private
    procedure SetSelected(const Value: boolean);
  public
    property Selected : boolean read FSelected write SetSelected;
    property Row : integer read FRow write FRow;

    // IRawElementProviderSimple
    function Get_ProviderOptions(out pRetVal: ProviderOptions): HResult; stdcall;
    function GetPatternProvider(patternId: SYSINT; out pRetVal: IUnknown): HResult; stdcall;
    function GetPropertyValue(propertyId: SYSINT; out pRetVal: OleVariant): HResult; stdcall;
    function Get_HostRawElementProvider(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    // IValueProvider
    function SetValue(val: PWideChar): HResult; stdcall;
    function Get_Value(out pRetVal: WideString): HResult; stdcall;
    function Get_IsReadOnly(out pRetVal: Integer): HResult; stdcall;

    // ISelectionItemProvider
    function Select: HResult; stdcall;
    function AddToSelection: HResult; stdcall;
    function RemoveFromSelection: HResult; stdcall;
    function Get_IsSelected(out pRetVal: Integer): HResult; stdcall;
    function Get_SelectionContainer(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    constructor Create(AOwner : TComponent);
  end;

type
  TAutomationStringGridItem = class (TInterfacedObject,
    IRawElementProviderSimple,
    ISelectionItemProvider,
    IValueProvider,
    IGridItemProvider)
  strict private
    FOwner: TComponent;
    FValue: string;
    FRow: integer;
    FColumn: integer;
    FSelected : boolean;

  private
    procedure SetColumn(const Value: integer);
    procedure SetRow(const Value: integer);
    procedure SetTheValue(const Value: string);
    procedure SetSelected(const Value: boolean);

  public
    property Row : integer read FRow write SetRow;
    property Column : integer read FColumn write SetColumn;
    property Value : string read FValue write SetTheValue;
    property Selected : boolean read FSelected write SetSelected;

    // IRawElementProviderSimple
    function Get_ProviderOptions(out pRetVal: ProviderOptions): HResult; stdcall;
    function GetPatternProvider(patternId: SYSINT; out pRetVal: IUnknown): HResult; stdcall;
    function GetPropertyValue(propertyId: SYSINT; out pRetVal: OleVariant): HResult; stdcall;
    function Get_HostRawElementProvider(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    // ISelectionItemProvider
    function Select: HResult; stdcall;
    function AddToSelection: HResult; stdcall;
    function RemoveFromSelection: HResult; stdcall;
    function Get_IsSelected(out pRetVal: Integer): HResult; stdcall;
    function Get_SelectionContainer(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    // IValueProvider
    function Get_Value(out pRetVal: WideString): HResult; stdcall;
    function SetValue(val: PWideChar): HResult; stdcall;
    function Get_IsReadOnly(out pRetVal: Integer): HResult; stdcall;

    // IGridItemProvider
    function Get_row(out pRetVal: SYSINT): HResult; stdcall;
    function Get_column(out pRetVal: SYSINT): HResult; stdcall;
    function Get_RowSpan(out pRetVal: SYSINT): HResult; stdcall;
    function Get_ColumnSpan(out pRetVal: SYSINT): HResult; stdcall;
    function Get_ContainingGrid(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    // ITableItemProvider


    constructor Create(AOwner: TComponent);// override;
  end;
implementation

uses
  sysutils;

{ TStringGridRow }

function TStringGridRow.AddToSelection: HResult;
begin
  result := (self as ISelectionItemProvider).Select;
end;

constructor TStringGridRow.Create(AOwner: TComponent);
begin
  inherited create;

  FGrid := AOwner;
end;

function TStringGridRow.GetPatternProvider(patternId: SYSINT;
  out pRetVal: IInterface): HResult;
begin
  result := S_FALSE;

  if ((patternID = UIA_SelectionItemPatternId) or
      (patternID = UIA_ValuePatternId)) then
  begin
    pRetVal := self;
  result := S_OK;
  end;

end;

function TStringGridRow.GetPropertyValue(propertyId: SYSINT;
  out pRetVal: OleVariant): HResult;
begin
  if(propertyId = UIA_ClassNamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar('TStringGridRow');
  end;

  if(propertyId = UIA_NamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar('Row ' + IntToStr(FRow));
  end;

  result := S_OK;
end;

function TStringGridRow.Get_HostRawElementProvider(
  out pRetVal: IRawElementProviderSimple): HResult;
begin
  pRetVal := nil;
  result := S_OK;
end;

function TStringGridRow.Get_IsReadOnly(out pRetVal: Integer): HResult;
begin
  pRetVal := 0;
  Result := S_OK;
end;

function TStringGridRow.Get_IsSelected(out pRetVal: Integer): HResult;
begin
  result := S_OK;

  if self.FSelected then
    pRetVal := 0
  else
    pRetVal := 1;
end;

function TStringGridRow.Get_ProviderOptions(
  out pRetVal: ProviderOptions): HResult;
begin
  pRetVal:= ProviderOptions_ServerSideProvider;
  Result := S_OK;
end;

function TStringGridRow.Get_SelectionContainer(
  out pRetVal: IRawElementProviderSimple): HResult;
begin
  result := S_OK;
  pRetVal := self.FGrid as IRawElementProviderSimple;
end;

function TStringGridRow.Get_Value(out pRetVal: WideString): HResult;
begin
  pRetVal := IntToStr(FRow);
  result := S_OK;
end;

function TStringGridRow.RemoveFromSelection: HResult;
begin
  self.FSelected := false;
end;

function TStringGridRow.Select: HResult;
begin
  self.FSelected := true;
  result := S_OK;
end;

procedure TStringGridRow.SetSelected(const Value: boolean);
begin
  FSelected := Value;
end;

function TStringGridRow.SetValue(val: PWideChar): HResult;
begin
  FRow := StrToInt(val);
  Result := S_OK;
end;

{ TAutomationStringGridItem }

function TAutomationStringGridItem.AddToSelection: HResult;
begin
  result := (self as ISelectionItemProvider).Select;
end;

constructor TAutomationStringGridItem.Create(AOwner: TComponent);
begin
  inherited create;// (AOwner);
  FOwner := AOwner;
end;

function TAutomationStringGridItem.GetPatternProvider(patternId: SYSINT;
  out pRetVal: IInterface): HResult;
begin
  pRetval := nil;

  if ((patternID = UIA_SelectionItemPatternId) or
      (patternID = UIA_GridItemPatternId) or
      (patternID = UIA_ValuePatternId)) then
  begin
    pRetVal := self;
    result := S_OK;
  end
end;

function TAutomationStringGridItem.GetPropertyValue(propertyId: SYSINT;
  out pRetVal: OleVariant): HResult;
begin
  if(propertyId = UIA_ControlTypePropertyId) then
  begin
    TVarData(pRetVal).VType := varWord;
    TVarData(pRetVal).VWord := UIA_DataItemControlTypeId;
  end;

  if (propertyId = UIA_NamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := PWideChar(self.Value);
  end;

  if(propertyId = UIA_ClassNamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar(self.ClassName);
  end;

  result := S_OK;
end;

function TAutomationStringGridItem.Get_HostRawElementProvider(
  out pRetVal: IRawElementProviderSimple): HResult;
begin
  pRetVal := nil;
  result := S_OK;
end;

function TAutomationStringGridItem.Get_IsReadOnly(
  out pRetVal: Integer): HResult;
begin
  pRetVal := 1;
  result := S_OK;
end;
function TAutomationStringGridItem.Get_IsSelected(

  out pRetVal: Integer): HResult;
begin
  result := S_OK;

  if self.FSelected then
    pRetVal := 0
  else
    pRetVal := 1;
end;

function TAutomationStringGridItem.Get_ProviderOptions(
  out pRetVal: ProviderOptions): HResult;
begin
  pRetVal:= ProviderOptions_ServerSideProvider;
  Result := S_OK;
end;

function TAutomationStringGridItem.Get_Value(out pRetVal: WideString): HResult;
begin
  pRetVal := self.FValue;
  result := S_OK;
end;

function TAutomationStringGridItem.RemoveFromSelection: HResult;
begin

end;

function TAutomationStringGridItem.Select: HResult;
begin
  self.FSelected := true;
end;

procedure TAutomationStringGridItem.SetColumn(const Value: integer);
begin
  FColumn := Value;
end;

procedure TAutomationStringGridItem.SetRow(const Value: integer);
begin
  FRow := Value;
end;

procedure TAutomationStringGridItem.SetSelected(const Value: boolean);
begin
  FSelected := Value;
end;

function TAutomationStringGridItem.SetValue(val: PWideChar): HResult;
begin
  result := S_OK;
  self.FValue := val;
end;

procedure TAutomationStringGridItem.SetTheValue(const Value: string);
begin
  FValue := Value;
end;

function TAutomationStringGridItem.Get_row(out pRetVal: SYSINT): HResult;
begin
  pRetVal := self.Row;
  result := S_OK;
end;

function TAutomationStringGridItem.Get_column(out pRetVal: SYSINT): HResult;
begin
  pRetVal := self.Column;
  result := S_OK;
end;

function TAutomationStringGridItem.Get_RowSpan(out pRetVal: SYSINT): HResult;
begin
  pRetVal := 1;
  result := S_OK;
end;

function TAutomationStringGridItem.Get_SelectionContainer(
  out pRetVal: IRawElementProviderSimple): HResult;
begin
  result := S_OK;
  pRetVal := FOwner as IRawElementProviderSimple;
end;

function TAutomationStringGridItem.Get_ColumnSpan(out pRetVal: SYSINT): HResult;
begin
  pRetVal := 1;
  result := S_OK;
end;

function TAutomationStringGridItem.Get_ContainingGrid(out pRetVal: IRawElementProviderSimple): HResult;
begin
  pRetVal := nil;
  result := S_OK;
end;


//procedure TAutomationStringGridItem.WMGetObject(var Message: TMessage);
//begin
//  ?????
//end;

end.
