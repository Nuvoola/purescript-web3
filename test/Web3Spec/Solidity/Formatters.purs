module Web3Spec.Solidity.Formatters (formatterSpec) where

import Prelude (Unit, ($))
import Data.Maybe (Maybe(Nothing))
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Web3.Solidity.Param (SolidityParam(..))
import Web3.Utils.Types (HexString(..))
import Web3.Utils.BigNumber (embed)
import Web3.Solidity.Formatters

formatterSpec :: forall r . Spec r Unit
formatterSpec = describe "formatter-spec" do
    describe "IntInput tests" do
      it "formats int input " do
        (formatInputInt $ embed 1) `shouldEqual` (SolidityParam {value: HexString "0000000000000000000000000000000000000000000000000000000000000001", offset: Nothing})
