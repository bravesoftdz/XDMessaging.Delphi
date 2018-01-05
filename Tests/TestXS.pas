unit TestXS;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, XSuperObject;

type
  // Test methods for class TestTSerializer

  TestTestTSerializer = class(TTestCase)
  published
    procedure TestSO;
  end;

implementation
type
TTest = class
  public
    [ALIAS('Type')]
     Typ: String;
    [ALIAS('Unit')]
     Unt: Integer;
    [REVAL('', '*')]
     Filter: String;
    [DISABLE]
     BlaBlaBla: String;
    [REVAL(roEmptyArrayToNull)]
     Arr: TArray<String>;
  end;

procedure TestTestTSerializer.TestSO;
var
  X: TTest;
  s: string;
begin
  X := TTest.Create;
  X.Typ := 'XType';
  X.Unt := 2;
  X.Filter := '';
  X.BlaBlaBla := ':)';
  SetLength(X.Arr, 0);
  s := X.AsJSON;
  CheckEquals('', s);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTestTSerializer.Suite);
end.

