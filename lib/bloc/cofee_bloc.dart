import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightcofee/events/cofee_event.dart';
import 'package:lightcofee/models/product/products.dart';
import 'package:lightcofee/service/product_service.dart';
import 'package:lightcofee/state/cofee_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService = ProductService();

  ProductBloc() : super(ProductInitial()) {
    on<FetchProducts>(_onFetchProducts);
  }

  void _onFetchProducts(FetchProducts event, Emitter<ProductState> emit) async {
    emit(ProductInitial()); // Setting the state to loading.

    try {
      final List<Product> products = await _productService.fetchProducts();
      emit(ProductLoaded(products: products)); // Setting the state to loaded.
    } catch (e) {
      emit(ProductError(message: e.toString())); // Setting the state to error.
    }
  }
}
