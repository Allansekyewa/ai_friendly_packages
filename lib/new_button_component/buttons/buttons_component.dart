import 'package:components_trial/core/enums/button_type.dart';
import 'package:components_trial/res/outline_gradient_painter.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart' as dotted_border;
import 'package:components_trial/core/enums/button_intents.dart';


class AyinzaButton extends StatelessWidget {
  final AyinzaButtonType? type;
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final bool isEnabled;
  final FocusNode? focusNode;
  final String? tooltip;
  final bool enableTooltip;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final OutlinedBorder? shape;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final BorderSide? borderSide;
  final bool dashedBorder;
  final List<double>? dashPattern;
  final List<BoxShadow>? boxShadow;
  final double? elevation;
  // Shadow direction properties
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final Color? shadowColor;
  final IconData? icon;
  final String? iconAssetPath;
  final Color? iconColor;
  final double? iconSize;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Widget? leadingWidget;
  final Widget? trailingWidget;

  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;

  final Color? leftSegmentColor;
  final Color? rightSegmentColor;
  final Widget? leftSegmentChild;
  final Widget? rightSegmentChild;
  final IconData? leftSegmentIcon;
  final String? firstText;
  final String? secondText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final int? leftFlex;
  final int? rightFlex;
  final BorderRadius? leftSegmentBorderRadius;
  final BorderRadius? rightSegmentBorderRadius;
  final EdgeInsetsGeometry? leftSegmentPadding;
  final EdgeInsetsGeometry? rightSegmentPadding;
  final AlignmentGeometry? leftSegmentAlignment;
  final AlignmentGeometry? rightSegmentAlignment;

  final Matrix4? transform;
  final Duration? tooltipWaitDuration;
  final ImageProvider? backgroundImage;
  final BlendMode? backgroundBlendMode;
  final BoxFit? backgroundImageFit;
  final Duration? animationDuration;
  final Curve? animationCurve;
  final bool? autofocus;
  final bool? isCircular;
  final double? splashRadius;
  final MaterialTapTargetSize? tapTargetSize;
  final Color? splashColor;
  final Color? highlightColor;
  final Color? surfaceTintColor;
  final VisualDensity? visualDensity;
  final WidgetStateProperty<Color?>? overlayColor;
  final double? iconSpacing;
  final MainAxisSize? mainAxisSize;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection? verticalDirection;
  final TextBaseline? textBaseline;
  final Clip? clipBehavior;

  final bool isSelected;
  final Color? selectedColor;
  final Color? selectedTextColor;
  final Color? unselectedColor;
  final Color? outlineColor;
  final double? outlineWidth;
  final BorderStyle outlineStyle;
  final int? badgeCount;
  final Color? badgeColor;
  final Color? badgeTextColor;
  final AlignmentGeometry? badgePosition;
  final bool showBadge;

  // Icon-only customization properties
  final bool showIconContainer;

  // Add intent properties for each button type
  final AyinzaElevatedIntent? elevatedIntent;
  final AyinzaOutlineIntent? outlineIntent;
  final AyinzaTextIntent? textIntent;
  final AyinzaFloatingIntent? floatingIntent;
  final AyinzaToggleIntent? toggleIntent;
  final AyinzaTwoSegmentIntent? twoSegmentIntent;
  final AyinzaCustomIntent? customIntent;
  final AyinzaBadgeIntent? badgeIntent;
  final AyinzaIconIntent? iconIntent;

  // Use this gradient for both background (elevated/custom) and outline (outline type)
  
  final bool toggleWithSwitch;
  final IconData? thumbIcon;
  final Widget? thumbChild;

  const AyinzaButton({
    super.key,
    this.type,
    required this.onPressed,
    this.child,
    this.text,
    this.isEnabled = true,
    this.focusNode,
    this.tooltip,
    this.enableTooltip = false,
    this.backgroundColor,
    this.foregroundColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
    this.gradient,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.alignment,
    this.shape,
    this.borderRadius,
    this.border,
    this.borderSide,
    this.dashedBorder = false,
    this.dashPattern,
    this.boxShadow,
    this.elevation,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.shadowColor,
    this.icon,
    this.iconAssetPath,
    this.iconColor,
    this.iconSize,
    this.leadingIcon,
    this.trailingIcon,
    this.leadingWidget,
    this.trailingWidget,
    this.textStyle,
    this.fontWeight,
    this.fontSize,
    this.textColor,
    this.leftSegmentColor,
    this.rightSegmentColor,
    this.leftSegmentChild,
    this.rightSegmentChild,
    this.leftSegmentIcon,
    this.firstText,
    this.secondText,
    this.firstTextStyle,
    this.secondTextStyle,
    this.leftFlex,
    this.rightFlex,
    this.leftSegmentBorderRadius,
    this.rightSegmentBorderRadius,
    this.leftSegmentPadding,
    this.rightSegmentPadding,
    this.leftSegmentAlignment,
    this.rightSegmentAlignment,
    this.transform,
    this.tooltipWaitDuration,
    this.backgroundImage,
    this.backgroundBlendMode,
    this.backgroundImageFit,
    this.animationDuration,
    this.animationCurve,
    this.autofocus,
    this.isCircular,
    this.splashRadius,
    this.tapTargetSize,
    this.splashColor,
    this.highlightColor,
    this.surfaceTintColor,
    this.visualDensity,
    this.overlayColor,
    this.iconSpacing,
    this.mainAxisSize,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.clipBehavior,
    this.isSelected = false,
    this.selectedColor,
    this.selectedTextColor,
    this.unselectedColor,
    this.outlineColor,
    this.outlineWidth,
    this.outlineStyle = BorderStyle.solid,
    this.badgeCount,
    this.badgeColor,
    this.badgeTextColor,
    this.badgePosition,
    this.showBadge = false,
    this.showIconContainer = false,
    this.elevatedIntent,
    this.outlineIntent,
    this.textIntent,
    this.floatingIntent,
    this.toggleIntent,
    this.twoSegmentIntent,
    this.customIntent,
    this.badgeIntent,
    this.iconIntent,
    this.toggleWithSwitch = false,
    this.thumbIcon,
    this.thumbChild,
  });

  AyinzaButtonType get _resolvedType {
    if (type != null) return type!;
    if (elevatedIntent != null) return AyinzaButtonType.elevated;
    if (outlineIntent != null) return AyinzaButtonType.outline;
    if (textIntent != null) return AyinzaButtonType.text;
    if (floatingIntent != null) return AyinzaButtonType.floating;
    if (toggleIntent != null) return AyinzaButtonType.toggle;
    if (twoSegmentIntent != null) return AyinzaButtonType.twoSegment;
    if (customIntent != null) return AyinzaButtonType.custom;
    if (badgeIntent != null) return AyinzaButtonType.badge;
    if (iconIntent != null) return AyinzaButtonType.icon;
    return AyinzaButtonType.elevated;
  }

  @override
  Widget build(BuildContext context) {
    Widget button = _buildButton(context);

    if (margin != null) {
      button = Padding(padding: margin!, child: button);
    }

    // --- FIX: Apply transform to the outermost widget if both dashedBorder and transform are set ---
    if (dashedBorder) {
      button = dotted_border.DottedBorder(
        borderType: dotted_border.BorderType.RRect,
        dashPattern: dashPattern ?? const [6, 3],
        color: borderSide?.color ?? Colors.transparent,
        strokeWidth: borderSide?.width ?? 1,
        radius: borderRadius != null
            ? Radius.circular((borderRadius as BorderRadius).topLeft.x)
            : Radius.zero,
        padding: EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: button,
        ),
      );
      if (transform != null) {
        button = Transform(transform: transform!, child: button);
      }
    } else {
      if (transform != null) {
        button = Transform(transform: transform!, child: button);
      }
    }

    if (enableTooltip && tooltip != null) {
      button = Tooltip(
        message: tooltip!,
        waitDuration: tooltipWaitDuration,
        child: button,
      );
    }

    return button;
  }

  Widget _buildButton(BuildContext context) {
    switch (_resolvedType) {
      case AyinzaButtonType.elevated:
        return _buildElevatedButton(context);
      case AyinzaButtonType.floating:
        return _buildFloatingButton(context);
      case AyinzaButtonType.twoSegment:
        return _buildTwoSegmentButton(context);
      case AyinzaButtonType.custom:
        return _buildCustomButton(context);
      case AyinzaButtonType.text:
        return _buildTextButton(context);
      case AyinzaButtonType.toggle:
        return _buildToggleButton(context);
      case AyinzaButtonType.outline:
        return _buildOutlineButton(context);
      case AyinzaButtonType.badge:
        return _buildBadgeButton(context);
      case AyinzaButtonType.icon:
        return _buildIconButton(context);
    }
  }

  Widget _buildElevatedButton(BuildContext context) {
    final buttonChild = _buildButtonContent(context);

    final needsWrapper =
        boxShadow != null || gradient != null || backgroundImage != null;

    final bool isDotted = dashedBorder;

    final button = ElevatedButton(
      onPressed: _getOnPressed(),
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          isDotted || needsWrapper ? Colors.transparent : backgroundColor,
        ),
        foregroundColor: WidgetStateProperty.all(foregroundColor),
        overlayColor: overlayColor,
        elevation:
            WidgetStateProperty.all(isDotted || needsWrapper ? 0 : elevation),
        shadowColor: WidgetStateProperty.all(shadowColor),
        surfaceTintColor: WidgetStateProperty.all(surfaceTintColor),
        minimumSize: (width != null || height != null)
            ? WidgetStateProperty.all(Size(width ?? 0, height ?? 0))
            : null,
        padding: WidgetStateProperty.all(padding),
        shape: isDotted ? null : WidgetStateProperty.all(shape),
        side: isDotted ? null : WidgetStateProperty.all(borderSide),
        tapTargetSize: tapTargetSize,
        visualDensity: visualDensity,
      ),
      child: buttonChild,
    );

    if (needsWrapper || isDotted) {
      return Container(
        width: width,
        height: height,
        clipBehavior: clipBehavior ?? Clip.none,
        decoration: BoxDecoration(
          color: isDotted ? null : backgroundColor,
          gradient: gradient,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow ??
              (elevation != null
                  ? [
                      BoxShadow(
                        color: shadowColor ?? Colors.black.withOpacity(0.2),
                        offset: shadowOffset ?? const Offset(0, 4),
                        blurRadius: shadowBlurRadius ?? 8,
                        spreadRadius: shadowSpreadRadius ?? 0,
                      ),
                    ]
                  : null),
          image: backgroundImage != null
              ? DecorationImage(
                  image: backgroundImage!,
                  fit: backgroundImageFit,
                  colorFilter: backgroundBlendMode != null
                      ? ColorFilter.mode(
                          backgroundColor ?? Colors.transparent,
                          backgroundBlendMode!,
                        )
                      : null,
                )
              : null,
        ),
        child: button,
      );
    }

    return button;
  }

  Widget _buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: _getOnPressed(),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      splashColor: splashColor,
      elevation: elevation,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      shape: shape,
      clipBehavior: clipBehavior ?? Clip.none,
      heroTag: null,
      child: child ?? _buildIconContent(),
    );
  }

  Widget _buildTwoSegmentButton(BuildContext context) {
    return GestureDetector(
      onTap: _getOnPressed(),
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            Expanded(
              flex: leftFlex ?? 1,
              child: Container(
                height: height,
                padding: leftSegmentPadding,
                decoration: BoxDecoration(
                  color: leftSegmentColor,
                  borderRadius: leftSegmentBorderRadius ??
                      const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                  border: border,
                  boxShadow: boxShadow,
                ),
                alignment: leftSegmentAlignment ?? Alignment.center,
                child: leftSegmentChild ??
                    (leftSegmentIcon != null
                        ? Icon(leftSegmentIcon!,
                            color: iconColor, size: iconSize)
                        : null),
              ),
            ),
            Expanded(
              flex: rightFlex ?? 4,
              child: Container(
                height: height,
                padding: rightSegmentPadding,
                decoration: BoxDecoration(
                  color: rightSegmentColor,
                  borderRadius: rightSegmentBorderRadius ??
                      const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                  border: border,
                  boxShadow: boxShadow,
                ),
                alignment: rightSegmentAlignment ?? Alignment.center,
                child: rightSegmentChild ?? _buildRichText(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      clipBehavior: clipBehavior ?? Clip.none,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: gradient,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        image: backgroundImage != null
            ? DecorationImage(
                image: backgroundImage!,
                fit: backgroundImageFit,
                colorFilter: backgroundBlendMode != null
                    ? ColorFilter.mode(
                        backgroundColor ?? Colors.transparent,
                        backgroundBlendMode!,
                      )
                    : null,
              )
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _getOnPressed(),
          borderRadius: borderRadius,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
          splashColor: splashColor,
          highlightColor: highlightColor,
          child: Container(
            padding: padding,
            alignment: alignment,
            child: child ?? _buildButtonContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonContent(BuildContext context) {
    if (child != null) return child!;

    List<Widget> children = [];

    if (leadingIcon != null || leadingWidget != null) {
      children.add(leadingWidget ?? _buildIcon(leadingIcon!));
      if ((text != null || icon != null) && iconSpacing != null) {
        children.add(SizedBox(width: iconSpacing));
      }
    }

    if (text != null) {
      children.add(
        Expanded(
          child: _buildText(),
        ),
      );
    }

    if (icon != null || iconAssetPath != null) {
      if (text != null && iconSpacing != null) {
        children.add(SizedBox(width: iconSpacing));
      }
      children.add(_buildIconContent());
    }

    if (trailingIcon != null || trailingWidget != null) {
      if (children.isNotEmpty && iconSpacing != null) {
        children.add(SizedBox(width: iconSpacing));
      }
      children.add(trailingWidget ?? _buildIcon(trailingIcon!));
    }

    return children.isEmpty
        ? const SizedBox.shrink()
        : SizedBox(
            width: width,
            child: Row(
              mainAxisSize: mainAxisSize ?? MainAxisSize.min,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down,
              textBaseline: textBaseline,
              children: children,
            ),
          );
  }

  Widget _buildText() {
    return Text(
      text!,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildIconContent() {
    Widget iconWidget;
    if (iconAssetPath != null) {
      iconWidget = Image.asset(
        iconAssetPath!,
        width: iconSize,
        height: iconSize,
        color: iconColor,
      );
    } else if (icon != null) {
      iconWidget = _buildIcon(icon!);
    } else {
      iconWidget = const SizedBox.shrink();
    }
    // Gradient/Patterned Icon
    if (gradient != null && (icon != null || iconAssetPath != null)) {
      return ShaderMask(
        shaderCallback: (Rect bounds) {
          return gradient!.createShader(bounds);
        },
        blendMode: BlendMode.srcIn,
        child: iconWidget,
      );
    }
    return iconWidget;
  }

  Widget _buildIcon(IconData iconData) {
    return Icon(iconData, color: iconColor, size: iconSize);
  }

  Widget _buildRichText(BuildContext context) {
    if (firstText != null && secondText != null) {
      return RichText(
        textAlign: TextAlign.center,
        textDirection: textDirection,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        text: TextSpan(
          text: firstText!,
          style: firstTextStyle,
          children: [
            TextSpan(
              text: secondText!,
              style: secondTextStyle,
            ),
          ],
        ),
      );
    }
    if (text != null) {
      return _buildText();
    }
    return const SizedBox.shrink();
  }

  VoidCallback? _getOnPressed() => isEnabled ? onPressed : null;

  // Text Button Implementation
  Widget _buildTextButton(BuildContext context) {
    final buttonChild = _buildButtonContent(context);

    return TextButton(
      onPressed: _getOnPressed(),
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(foregroundColor ?? textColor),
        overlayColor: overlayColor,
        minimumSize: (width != null || height != null)
            ? WidgetStateProperty.all(Size(width ?? 0, height ?? 0))
            : null,
        padding: WidgetStateProperty.all(padding),
        shape: WidgetStateProperty.all(shape),
        tapTargetSize: tapTargetSize,
        visualDensity: visualDensity,
      ),
      child: buttonChild,
    );
  }

  // Toggle Button Implementation
  Widget _buildToggleButton(BuildContext context) {
    final buttonChild = _buildButtonContent(context);
    final currentColor = isSelected ? selectedColor : unselectedColor;
    final currentTextColor = isSelected ? selectedTextColor : foregroundColor;

    if (toggleWithSwitch) {
      return GestureDetector(
        onTap: _getOnPressed(),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: currentColor ?? backgroundColor,
            borderRadius: borderRadius,
            border: border,
            boxShadow: boxShadow,
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              if (leadingIcon != null && text != null) ...[
                Flexible(child: _buildIcon(leadingIcon!)),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    text!,
                    style: textStyle ?? TextStyle(
                      color: currentTextColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 8),
              ] else ...[
                if (leadingIcon != null) ...[
                  _buildIcon(leadingIcon!),
                  const SizedBox(width: 8),
                ],
                if (text != null) ...[
                  Flexible(
                    child: Text(
                      text!,
                      style: textStyle ?? TextStyle(
                        color: currentTextColor,
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ],
              if (trailingIcon != null) ...[
                if (iconSpacing != null) SizedBox(width: iconSpacing),
                _buildIcon(trailingIcon!),
                const SizedBox(width: 8),
              ],
              GestureDetector(
                onTap: isEnabled ? _getOnPressed() : null,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: isSelected
                        ? (selectedColor ?? Colors.blue)
                        : (unselectedColor ?? Colors.grey.withOpacity(0.3)),
                  ),
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 200),
                    alignment:
                        isSelected ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      child: thumbChild ??
                          (thumbIcon != null
                              ? Icon(
                                  thumbIcon,
                                  size: 18,
                                  color: isSelected
                                      ? (selectedColor ?? Colors.blue)
                                      : (unselectedColor ?? Colors.grey),
                                )
                              : null),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: _getOnPressed(),
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: currentColor ?? backgroundColor,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow,
        ),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
              color: currentTextColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            child: buttonChild,
          ),
        ),
      ),
    );
  }

  // Outline Button Implementation
  Widget _buildOutlineButton(BuildContext context) {
    final buttonChild = _buildButtonContent(context);

    // Gradient + Dashed
    if (gradient != null && dashedBorder) {
      return CustomPaint(
        painter: GradientDashedOutlinePainter(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          strokeWidth: outlineWidth ?? 2.0,
          gradient: gradient!,
          dashPattern: dashPattern ?? [6, 3],
        ),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          alignment: Alignment.center,
          child: OutlinedButton(
            onPressed: _getOnPressed(),
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              foregroundColor: WidgetStateProperty.all(foregroundColor ?? textColor),
              overlayColor: overlayColor,
              minimumSize: (width != null || height != null)
                  ? WidgetStateProperty.all(Size(width ?? 0, height ?? 0))
                  : null,
              padding: WidgetStateProperty.all(padding),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(8),
                ),
              ),
              side: WidgetStateProperty.all(BorderSide.none),
              tapTargetSize: tapTargetSize,
              visualDensity: visualDensity,
            ),
            child: buttonChild,
          ),
        ),
      );
    }

    // Gradient + Solid
    if (gradient != null) {
      return CustomPaint(
        painter: GradientOutlinePainter(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          strokeWidth: outlineWidth ?? 2.0,
          gradient: gradient!,
        ),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          alignment: Alignment.center,
          child: OutlinedButton(
            onPressed: _getOnPressed(),
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              foregroundColor: WidgetStateProperty.all(foregroundColor ?? textColor),
              overlayColor: overlayColor,
              minimumSize: (width != null || height != null)
                  ? WidgetStateProperty.all(Size(width ?? 0, height ?? 0))
                  : null,
              padding: WidgetStateProperty.all(padding),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(8),
                ),
              ),
              side: WidgetStateProperty.all(BorderSide.none),
              tapTargetSize: tapTargetSize,
              visualDensity: visualDensity,
            ),
            child: buttonChild,
          ),
        ),
      );
    }

    // If dashed border is requested, use custom implementation
    if (dashedBorder) {
      return SizedBox(
        width: width,
        height: height,
        child: dotted_border.DottedBorder(
          borderType: dotted_border.BorderType.RRect,
          dashPattern: dashPattern ?? const [6, 3],
          color: outlineColor ?? foregroundColor ?? Colors.grey,
          strokeWidth: outlineWidth ?? 1,
          radius: borderRadius != null
              ? Radius.circular((borderRadius as BorderRadius).topLeft.x)
              : Radius.zero,
          padding: EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.zero,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _getOnPressed(),
                borderRadius: borderRadius,
                focusNode: focusNode,
                autofocus: autofocus ?? false,
                splashColor: splashColor,
                highlightColor: highlightColor,
                child: Container(
                  padding: padding,
                  child: Center(
                    child: buttonChild,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Regular outline button
    return OutlinedButton(
      onPressed: _getOnPressed(),
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(foregroundColor ?? textColor),
        overlayColor: overlayColor,
        minimumSize: (width != null || height != null)
            ? WidgetStateProperty.all(Size(width ?? 0, height ?? 0))
            : null,
        padding: WidgetStateProperty.all(padding),
        shape: WidgetStateProperty.all(shape),
        side: WidgetStateProperty.all(
          BorderSide(
            color: outlineColor ?? foregroundColor ?? Colors.grey,
            width: outlineWidth ?? 1.0,
            style: outlineStyle,
          ),
        ),
        tapTargetSize: tapTargetSize,
        visualDensity: visualDensity,
      ),
      child: buttonChild,
    );
  }

  // Badge Button Implementation
  Widget _buildBadgeButton(BuildContext context) {
    final buttonChild = _buildButtonContent(context);
    final hasBadge = showBadge && badgeCount != null && badgeCount! > 0;

    Widget button = Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
      ),
      child: Stack(
        children: [
          Center(child: buttonChild),
          if (hasBadge)
            Positioned(
              top: 0,
              right: 0,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                child: Container(
                  key: ValueKey<int>(badgeCount!),
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: badgeColor ?? Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Center(
                    child: Text(
                      badgeCount!.toString(),
                      style: TextStyle(
                        color: badgeTextColor ?? Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );

    return GestureDetector(
      onTap: _getOnPressed(),
      child: button,
    );
  }

  // Icon Button Implementation
  Widget _buildIconButton(BuildContext context) {
 
    if (!showIconContainer) {
      return GestureDetector(
        onTap: _getOnPressed(),
        child: _buildIconContent(),
      );
    }

    // Scenario 2: With Container - Traditional Button
    return GestureDetector(
      onTap: _getOnPressed(),
      child: Container(
        width: width ?? 48,
        height: height ?? 48,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(24),
          border: border,
          boxShadow: boxShadow,
        ),
        child: Center(
          child: _buildIconContent(),
        ),
      ),
    );
  }
}

