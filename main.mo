//hesap makinesi
//değişkenler (let -> imutable/değiştirilemez/, var -> mutable)
//operatörler
//async
//if condition 

//canister -> akıllı sözleşme

//Hannenur Dursun - Web3 Operations and Analytics Intern Adayı 

actor hesap_makinesi {
  var hucre: Int = 0;

  //Toplama 
  public func toplama(s: Int) : async Int{
    hucre += s;
    hucre
  };
  
  //Çıkarma
  public func cikarma(s: Int) : async Int{
    hucre -= s;
    hucre
  };
  
  //Çarpma
  public func carpma(s: Int) : async Int{
    hucre *= s;
    hucre
  };

  //Bölme
  public func bolme(s: Int) : async ?Int{
    if ( s == 0){
      null
    }else {
      hucre /= s;
      ?hucre
    };
  };

  //Temizle
  public func temizle() : async (){
    hucre := 0;

  };
};