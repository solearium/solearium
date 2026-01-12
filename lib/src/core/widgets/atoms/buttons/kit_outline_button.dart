import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_base_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_tokens.dart';

/// An outlined button with a border and transparent background.
/// Used for medium-emphasis actions.
class KitOutlineButton extends StatelessWidget {
  const KitOutlineButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.leading,
    this.trailing,
    this.state = KitButtonState.enabled,
    this.size = KitButtonSize.medium,
    this.fixedSize,
    this.minimumSize,
    this.color,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final KitButtonState state;
  final KitButtonSize size;
  final Size? fixedSize;
  final Size? minimumSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = color ?? theme.colorScheme.primary;

    return KitBaseButton(
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
      borderRadius: BorderRadius.circular(KitButtonTokens.radius),
      child: child,
    );
  }
}