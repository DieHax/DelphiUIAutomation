{***************************************************************************}
{                                                                           }
{           DelphiUIAutomation                                              }
{                                                                           }
{           Copyright 2015-17 JHC Systems Limited                           }
{                                                                           }
{           Author: Robert Deutschmann <robert.deutschmann@ekor.ch>         }
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
unit AutomatedButton;

interface

uses
  UIAutomationCore_TLB,
  messages,
  ActiveX,
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TAutomatedButton = class(TButton,
        IValueProvider,
        IRawElementProviderSimple)
  private
    { Private declarations }
    FRawElementProviderSimple : IRawElementProviderSimple;

    procedure WMGetObject(var Message: TMessage); message WM_GETOBJECT;

  protected
    { Protected declarations }
  public
    { Public declarations }

    // IRawElementProviderSimple
    function Get_ProviderOptions(out pRetVal: ProviderOptions): HResult; stdcall;
    function GetPatternProvider(patternId: SYSINT; out pRetVal: IUnknown): HResult; stdcall;
    function GetPropertyValue(propertyId: SYSINT; out pRetVal: OleVariant): HResult; stdcall;
    function Get_HostRawElementProvider(out pRetVal: IRawElementProviderSimple): HResult; stdcall;

    // IValueProvider
    function SetValue(val: PWideChar): HResult; stdcall;
    function Get_Value(out pRetVal: WideString): HResult; stdcall;
    function Get_IsReadOnly(out pRetVal: Integer): HResult; stdcall;

  published
    { Published declarations }
  end;

procedure Register;

implementation

uses
  windows;

procedure Register;
begin
  RegisterComponents('Automation', [TAutomatedButton]);
end;

{ TAutomatedButton }

function TAutomatedButton.GetPatternProvider(patternId: SYSINT;
  out pRetVal: IInterface): HResult;
begin
  result := S_OK;
  pRetval := nil;

  //if (patternID = UIA_ValuePatternID) then
  if (patternID = UIA_InvokePatternId) then
  begin
    pRetVal := self;
  end;
end;

function TAutomatedButton.GetPropertyValue(propertyId: SYSINT;
  out pRetVal: OleVariant): HResult;
begin
   if(propertyId = UIA_ClassNamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar(self.ClassName);
    result := S_OK;
  end
  else if(propertyId = UIA_NamePropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar(self.Name);
    result := S_OK;
  end
  else if(propertyId = UIA_AutomationIdPropertyId) then
  begin
    TVarData(pRetVal).VType := varOleStr;
    TVarData(pRetVal).VOleStr := pWideChar(self.Name);
    result := S_OK;
  end
  else if(propertyId = UIA_ControlTypePropertyId) then
  begin
    TVarData(pRetVal).VType := varInteger;
    TVarData(pRetVal).VInteger := UIA_ButtonControlTypeId;
    result := S_OK;
  end
  else
    result := S_FALSE;
end;

function TAutomatedButton.Get_HostRawElementProvider(
  out pRetVal: IRawElementProviderSimple): HResult;
begin
  result := UiaHostProviderFromHwnd (self.Handle, pRetVal);
end;

function TAutomatedButton.Get_IsReadOnly(out pRetVal: Integer): HResult;
begin
  pRetVal := 0;   // Maybe?
  Result := S_OK;
end;

function TAutomatedButton.Get_ProviderOptions(
  out pRetVal: ProviderOptions): HResult;
begin
  pRetVal:= ProviderOptions_ServerSideProvider;
  Result := S_OK;
end;

function TAutomatedButton.Get_Value(out pRetVal: WideString): HResult;
begin
  Result := S_OK;
  pRetVal := self.Text;
end;

function TAutomatedButton.SetValue(val: PWideChar): HResult;
begin
  self.Text := val;
  Result := S_OK;
end;

procedure TAutomatedButton.WMGetObject(var Message: TMessage);
begin
  if (Message.Msg = WM_GETOBJECT) then
  begin
    QueryInterface(IID_IRawElementProviderSimple, FRawElementProviderSimple);

    message.Result := UiaReturnRawElementProvider(self.Handle, Message.WParam, Message.LParam, FRawElementProviderSimple);
  end
  else
    Message.Result := DefWindowProc(self.Handle, Message.Msg, Message.WParam, Message.LParam);
end;

end.
