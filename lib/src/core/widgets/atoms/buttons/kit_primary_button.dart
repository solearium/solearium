import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_tokens.dart';

/// A primary button used for the main action on a screen.
/// Typically has a solid background color (primary theme color) and
/// contrasting text.
class KitPrimaryButton extends StatelessWidget {
  const KitPrimaryButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.leading,
    this.trailing,
    this.state = KitButtonState.enabled,
    this.size = KitButtonSize.medium,
    this.fixedSize,
    this.minimumSize,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final KitButtonState state;
  final KitButtonSize size;
  final Size? fixedSize;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return KitBaseButton(
      onPressed: onPressed,
      leading: leading,
      trailing: trailing,
      state: state,
      size: size,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      elevation: KitButtonTokens.elevationPrimary,
      fixedSize: fixedSize,
      minimumSize: minimumSize,
      // padding: handled by size in KitBaseButton
      borderRadius: BorderRadius.circular(KitButtonTokens.radius),
      child: child,
    );
  }
}