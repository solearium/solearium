import 'package:flutter/material.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_size.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_button_state.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_destructive_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_ghost_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_icon_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_link_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_outline_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_primary_button.dart';
import 'package:solearium/src/core/widgets/atoms/buttons/app_secondary_button.dart';

void main() {
  runApp(const MaterialApp(home: AppButtonsExample()));
}

/// A gallery widget that displays all available App buttons in their
/// various states and sizes.
class AppButtonsExample extends StatelessWidget {
  const AppButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Buttons Gallery')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _buildSection(
              'Primary Button',
              (size, state, leading, trailing) => AppPrimaryButton(
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
              (size, state, leading, trailing) => AppSecondaryButton(
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
              (size, state, leading, trailing) => AppOutlineButton(
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
              (size, state, leading, trailing) => AppDestructiveButton(
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
              (size, state, leading, trailing) => AppGhostButton(
                onPressed: () {},
                size: size,
                state: state,
                leading: leading,
                trailing: trailing,
                child: const Text('Ghost'),
              ),
            ),
            const Divider(height: 48),
            _buildLinkButtonSection(),
            const Divider(height: 48),
            _buildIconButtonSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildLinkButtonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Link Button',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildRowLabel('States'),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            AppLinkButton(
              onPressed: () {},
              text: 'Enabled',
            ),
            AppLinkButton(
              onPressed: () {},
              text: 'Disabled',
              state: AppButtonState.disabled,
            ),
            AppLinkButton(
              onPressed: () {},
              text: 'Loading',
              state: AppButtonState.loading,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSection(
    String title,
    Widget Function(
      AppButtonSize size,
      AppButtonState state,
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
            builder(AppButtonSize.large, AppButtonState.enabled, null, null),
            builder(AppButtonSize.medium, AppButtonState.enabled, null, null),
            builder(AppButtonSize.small, AppButtonState.enabled, null, null),
          ],
        ),
        const SizedBox(height: 16),
        _buildRowLabel('States'),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            builder(AppButtonSize.medium, AppButtonState.enabled, null, null),
            builder(AppButtonSize.medium, AppButtonState.disabled, null, null),
            builder(AppButtonSize.medium, AppButtonState.loading, null, null),
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
              AppButtonSize.medium,
              AppButtonState.enabled,
              const Icon(Icons.check, size: 18),
              null,
            ),
            builder(
              AppButtonSize.medium,
              AppButtonState.enabled,
              null,
              const Icon(Icons.arrow_forward, size: 18),
            ),
            builder(
              AppButtonSize.medium,
              AppButtonState.enabled,
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
            AppIconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              tooltip: 'Default',
            ),
            AppIconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.red,
              tooltip: 'Colored',
            ),
            AppIconButton(
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
