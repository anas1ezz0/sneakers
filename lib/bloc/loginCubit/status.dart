abstract class ShopLoginState {}
 class ShopInitialState extends ShopLoginState{}

 class ShopLoadingState extends ShopLoginState{}

 class ShopSuccessState extends ShopLoginState{}


 class ShopErrorState extends ShopLoginState{
  final String error;

  ShopErrorState(this.error);
}
class ShopChangeVisibilityState extends ShopLoginState{}