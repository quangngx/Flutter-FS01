// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_social_network/app/app.dart';
import 'package:flutter_social_network/bootstrap.dart';
import 'package:flutter_social_network/configs/router.dart';

void main() {
  bootstrap(
    () => App(
      appRouter: AppRouter(),
    ),
  );
}
