import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_tokens.dart';

/// An outlined button with a border and transparent background.
/// Used for medium-emphasis actions.
class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.leading,
    this.trailing,
    this.state = AppButtonState.enabled,
    this.size = AppButtonSize.medium,
    this.fixedSize,
    this.minimumSize,
    this.color,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final AppButtonState state;
  final AppButtonSize size;
  final Size? fixedSize;
  final Size? minimumSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = color ?? theme.colorScheme.primary;

    return AppBaseButton(
      onPressed: onPressed,
      leading: leading,
      trailing: trailing,
      state: state,
      size: size,
      backgroundColor: Colors.transparent,
      foregroundColor: effectiveColor,
      elevation: 0,
      borderSide: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: theme.disabledColor);
        }
        return BorderSide(color: effectiveColor);
      }),
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      borderRadius: BorderRadius.circular(AppButtonTokens.radius),
      child: child,
    );
  }
}
