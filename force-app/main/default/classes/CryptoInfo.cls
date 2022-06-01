public class CryptoInfo {
    public static Decimal showPrice(string coinName) {
        
        decimal thePrice;
        
        Map<string, decimal> CryptoMap = new Map<string, decimal>();

        CryptoMap.put('BTC', 35.000);
        CryptoMap.put('ETH', 2.500);
        CryptoMap.put('API', 54.285);

        thePrice = CryptoMap.get(coinName);

        return thePrice;
    }
}
