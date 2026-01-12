import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_tokens.dart';

/// A button used for destructive actions like delete, remove, or sign out.
/// Typically uses the error color from the theme.
class AppDestructiveButton extends StatelessWidget {
  const AppDestructiveButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.leading,
    this.trailing,
    this.state = AppButtonState.enabled,
    this.size = AppButtonSize.medium,
    this.fixedSize,
    this.minimumSize,
    this.outlined = false,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final AppButtonState state;
  final AppButtonSize size;
  final Size? fixedSize;
  final Size? minimumSize;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final errorColor = theme.colorScheme.error;
    final onErrorColor = theme.colorScheme.onError;

    if (outlined) {
      return AppBaseButton(
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        state: state,
        size: size,
        backgroundColor: Colors.transparent,
        foregroundColor: errorColor,
        elevation: 0,
        borderSide: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(color: theme.disabledColor);
          }
          return BorderSide(color: errorColor);
        }),
        fixedSize: fixedSize,
        minimumSize: minimumSize,
        borderRadius: BorderRadius.circular(AppButtonTokens.radius),
        child: child,
      );
    }

    return AppBaseButton(
      onPressed: onPressed,
      leading: leading,
      trailing: trailing,
      state: state,
      size: size,
      backgroundColor: errorColor,
      foregroundColor: onErrorColor,
      elevation: AppButtonTokens.elevationPrimary,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      borderRadius: BorderRadius.circular(AppButtonTokens.radius),
      child: child,
    );
  }
}
