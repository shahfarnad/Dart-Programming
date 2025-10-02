main(){
  List<Map>fruits=[
    {'Name': 'Apple', 'Color': 'Red', 'Price': 2.5},
    {'Name': 'Banana', 'Color': 'Yellow', 'Price': 1.0},
    {'Name': 'Grapes', 'Color': 'Purple', 'Price': 3.0},
  ];
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits);
}
void displayFruitDetails(var fruits){
  print('Original Fruit Details before Discount: ');
  for(var f in fruits)
    {
      print('Name: ${f['Name']}, Color: ${f['Color']}, Price: \$${f['Price']}');
    }
}
void applyPriceDiscount(var fruits){
  print('\nFruit Details After Applying 10% Discount:');
  for(var f in fruits)
  {
    double price=f['Price'];
    f['Price']=price-(price*0.10) ;
    print('Name: ${f['Name']}, Color: ${f['Color']}, Price: \$${f['Price']}');
  }
}