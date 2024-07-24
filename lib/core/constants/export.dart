/// Flutter Imports
library;

export 'dart:io';
export 'dart:convert';
export 'dart:async';
export 'dart:math';

export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter/foundation.dart';

/// Lib Imports

/// Packages Imports
export 'package:size_adapter/size_adapter.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:go_router/go_router.dart';

/// App
///-- Models
///---- Custom

///---- Request
///---- Response
export 'package:e_commerce_app/app/model/response/home_model.dart';

///-- Services
///---- Remote

///---- Repository

///-- provider
export 'package:e_commerce_app/app/view_model/home/home_provider.dart';

///-- Views
export 'package:e_commerce_app/app/view/splash/splash_view.dart';

///---- Components

///-- Widgets
export 'package:e_commerce_app/app/widget/text_form_field_widget.dart';
export 'package:e_commerce_app/app/widget/text_view_widget.dart';
export 'package:e_commerce_app/app/widget/sizedBox_widget.dart';
export 'package:e_commerce_app/app/widget/button_widget.dart';

/// Config
///-- Router
export 'package:e_commerce_app/config/router/route_names.dart';
export 'package:e_commerce_app/config/router/app_router.dart';
export 'package:e_commerce_app/app/view/auth/registration/registration_view.dart';
export 'package:e_commerce_app/app/view/auth/login/login_view.dart';
export 'package:e_commerce_app/app/view/home/home_view.dart';

///-- Theme
export 'package:e_commerce_app/config/theme/text_styles.dart';
export 'package:e_commerce_app/config/theme/app_theme.dart';

/// Core
///-- Constants
export 'package:e_commerce_app/core/constants/app_colors.dart';
export 'package:e_commerce_app/core/constants/strings_resource.dart';
export 'package:e_commerce_app/core/extensions/widget_ext.dart';

///-- Enums
export 'package:e_commerce_app/core/enums/response_status_enum.dart';

///-- Extensions

///-- Services
export 'package:provider/provider.dart';
export 'package:e_commerce_app/core/Services/registerall_provider.dart';

///-- Utils
export 'package:e_commerce_app/core/utils/validation.dart';

///---- Api Utils
export 'package:e_commerce_app/core/Services/api_endpoints.dart';
