import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_tokens.dart';

/// A ghost button (also known as a text button) with no background or border.
/// Used for low-emphasis actions.
class AppGhostButton extends StatelessWidget {
  const AppGhostButton({
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
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      // We rely on size-based padding now.
      // If you want the old "compact" look by default, use
      // size: AppButtonSize.small
      borderRadius: BorderRadius.circular(AppButtonTokens.radius),
      child: child,
    );
  }
}
