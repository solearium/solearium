import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_tokens.dart';

/// A primary button used for the main action on a screen.
/// Typically has a solid background color (primary theme color) and
/// contrasting text.
class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.leading,
    this.trailing,
    this.state = AppButtonState.enabled,
    this.size = AppButtonSize.medium,
    this.fixedSize,
    this.minimumSize,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final AppButtonState state;
  final AppButtonSize size;
  final Size? fixedSize;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBaseButton(
      onPressed: onPressed,
      leading: leading,
      trailing: trailing,
      state: state,
      size: size,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      elevation: AppButtonTokens.elevationPrimary,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      // padding: handled by size in AppBaseButton
      borderRadius: BorderRadius.circular(AppButtonTokens.radius),
      child: child,
    );
  }
}
