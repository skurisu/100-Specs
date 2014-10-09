import js.Lib;

import js.expect.Expect;
import js.mocha.Mocha;

using js.expect.Expect;
using js.mocha.Mocha;

class HundredSpecs
{
  public function new()
  {
    M.describe("Step 1", step1);
    M.describe("Step 2", step2);
    M.describe("Step 3", step3);
  }

  private inline function step1():Void
  {
    M.it("should define a variable named 'unicorn' with no value set.", function() {
      if(untyped(unicorn) == null){
        E.expect(true).to.be.ok();
      }else{
        E.expect().fail("unicorn is not set");
      }
      // E.expect(untyped(unicorn)).to.eql(null); // doesn't work
    });
  }

  private inline function step2():Void
  {
    M.it("should define a variable named 'vgsystem' with a value of 'atari'.", function() {
      E.expect(untyped(vgsystem)).toBe("atari"); // doesn't work
    });
  }

  private inline function step3():Void
  {
    M.it("should define a variable named 'sahara_animal' with a value of 'The Addax'.", function() {
      E.expect(untyped(sahara_animal)).toBe("The Addax"); // doesn't work
    });
  }

  static public function main()
  {
    Mocha.setup( { ui: Ui.BDD } );
    new HundredSpecs();
    Mocha.run();
  }
}