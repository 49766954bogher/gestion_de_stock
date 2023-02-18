import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_de_stock/bloc-cubit/cubit/authentication_cubit.dart';

import '../bloc-cubit/cubit/authentication_state.dart';

final errorMessage = BlocBuilder<AuthenticationCubit, AuthenticationState>(
    builder: (context, state) {
  if (state is AuthenticationLoadingState) {
    return const Center(child: CircularProgressIndicator());
  } else if (state is AuthenticationErrorState) {
    return Text(state.msg);
  } else {
    return Container();
  }
});
