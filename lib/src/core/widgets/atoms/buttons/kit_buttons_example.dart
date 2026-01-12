import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_destructive_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_ghost_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_icon_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_link_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_outline_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_primary_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/kit_secondary_button.dart';

/// A gallery widget that displays all available Kit buttons in their
/// various states and sizes.
class KitButtonsExample extends StatelessWidget {
  const KitButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kit Buttons Gallery')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _buildSection(
              'Primary Button',
              (size, state, leading, trailing) => KitPrimaryButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Primary'),
              ),
            ),
            const Divider(height: 48),
            _buildSection(
              'Secondary Button',
              (size, state, leading, trailing) => KitSecondaryButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Secondary'),
              ),
            ),
            const Divider(height: 48),
            _buildSection(
              'Outline Button',
              (size, state, leading, trailing) => KitOutlineButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Outline'),
              ),
            ),
            const Divider(height: 48),
            _buildSection(
              'Destructive Button',
              (size, state, leading, trailing) => KitDestructiveButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Destructive'),
              ),
            ),
            const Divider(height: 48),
            _buildSection(
              'Ghost Button',
              (size, state, leading, trailing) => KitGhostButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Ghost'),
              ),
            ),
            const Divider(height: 48),
            _buildSection(
              'Link Button',
              (size, state, leading, trailing) => KitLinkButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Link'),
              ),
            ),
            const Divider(height: 48),
            _buildIconButtonSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    String title,
    Widget Function(
      KitButtonSize size,
      KitButtonState state,
      Widget? leading,
      Widget? trailing,
    )
    builder,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildRowLabel('Sizes'),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            builder(KitButtonSize.large, KitButtonState.enabled, null, null),
            builder(KitButtonSize.medium, KitButtonState.enabled, null, null),
            builder(KitButtonSize.small, KitButtonState.enabled, null, null),
          ],
        ),
        const SizedBox(height: 16),
        _buildRowLabel('States'),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            builder(KitButtonSize.medium, KitButtonState.enabled, null, null),
            builder(KitButtonSize.medium, KitButtonState.disabled, null, null),
            builder(KitButtonSize.medium, KitButtonState.loading, null, null),
          ],
        ),
        const SizedBox(height: 16),
        _buildRowLabel('With Icons'),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            builder(
              KitButtonSize.medium,
              KitButtonState.enabled,
              const Icon(Icons.check, size: 18),
              null,
            ),
            builder(
              KitButtonSize.medium,
              KitButtonState.enabled,
              null,
              const Icon(Icons.arrow_forward, size: 18),
            ),
            builder(
              KitButtonSize.medium,
              KitButtonState.enabled,
              const Icon(Icons.check, size: 18),
              const Icon(Icons.arrow_forward, size: 18),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIconButtonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Icon Button',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            KitIconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              tooltip: 'Default',
            ),
            KitIconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.red,
              tooltip: 'Colored',
            ),
            KitIconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              backgroundColor: Colors.grey.withValues(alpha: 0.2),
              tooltip: 'With Background',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRowLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
      ),
    );
  }
}
