package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1176:BigInteger;
      
      private var var_621:BigInteger;
      
      private var var_1441:BigInteger;
      
      private var var_1442:BigInteger;
      
      private var var_1811:BigInteger;
      
      private var var_1810:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1176 = param1;
         var_1441 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1811.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1442 = new BigInteger();
         var_1442.fromRadix(param1,param2);
         var_1811 = var_1442.modPow(var_621,var_1176);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1810.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1176.toString() + ",generator: " + var_1441.toString() + ",secret: " + param1);
         var_621 = new BigInteger();
         var_621.fromRadix(param1,param2);
         var_1810 = var_1441.modPow(var_621,var_1176);
         return true;
      }
   }
}
