{
    "name": "Omarchy",
    "$schema": "vscode://schemas/color-theme",
    "type": "{{ theme_type }}",
    "semanticHighlighting": true,
    "semanticTokenColors": {
        "parameter": "{{ cyan }}",
        "parameter.declaration": "{{ cyan }}",
        "variable": "{{ foreground }}",
        "variable.declaration": "{{ foreground }}",
        "variable.readonly": "{{ bright_yellow }}",
        "variable.defaultLibrary": "{{ foreground }}",
        "property": "{{ cyan }}",
        "property.declaration": "{{ cyan }}",
        "property.readonly": "{{ cyan }}",
        "function": "{{ blue }}",
        "function.declaration": "{{ blue }}",
        "function.defaultLibrary": "{{ cyan }}",
        "method": "{{ blue }}",
        "method.declaration": "{{ blue }}",
        "class": "{{ yellow }}",
        "class.declaration": "{{ yellow }}",
        "class.defaultLibrary": "{{ yellow }}",
        "interface": "{{ yellow }}",
        "interface.declaration": "{{ yellow }}",
        "enum": "{{ yellow }}",
        "enumMember": "{{ orange }}",
        "type": "{{ yellow }}",
        "type.declaration": "{{ yellow }}",
        "type.defaultLibrary": "{{ foreground }}",
        "typeParameter": "{{ yellow }}",
        "namespace": "{{ blue }}",
        "macro": "{{ magenta }}",
        "decorator": "{{ blue }}",
        "string": "{{ green }}",
        "number": "{{ orange }}",
        "boolean": "{{ orange }}",
        "regexp": "{{ bright_cyan }}",
        "operator": "{{ bright_blue }}",
        "keyword": "{{ magenta }}",
        "comment": {"foreground": "{{ brown }}", "fontStyle": "italic"},
        "comment.documentation": {"foreground": "{{ brown }}", "fontStyle": "italic"}
    },
    "colors": {
        "foreground": "{{ foreground }}",
        "disabledForeground": "{{ dark_foreground }}",
        "focusBorder": "{{ accent }}80",
        "widget.shadow": "{{ background }}80",
        "selection.background": "{{ selection_background }}80",
        "descriptionForeground": "{{ muted }}",
        "errorForeground": "{{ red }}",
        "icon.foreground": "{{ foreground }}",
        "sash.hoverBorder": "{{ accent }}",

        "textBlockQuote.background": "{{ background }}",
        "textBlockQuote.border": "{{ accent }}",
        "textCodeBlock.background": "{{ background }}",
        "textLink.activeForeground": "{{ bright_blue }}",
        "textLink.foreground": "{{ blue }}",
        "textPreformat.foreground": "{{ cyan }}",
        "textPreformat.background": "{{ background }}",
        "textSeparator.foreground": "{{ muted }}",

        "toolbar.hoverBackground": "{{ background }}",
        "toolbar.activeBackground": "{{ muted }}",

        "button.background": "{{ accent }}",
        "button.foreground": "{{ background }}",
        "button.hoverBackground": "{{ blue }}",
        "button.secondaryForeground": "{{ foreground }}",
        "button.secondaryBackground": "{{ muted }}",
        "button.secondaryHoverBackground": "{{ background }}",
        "button.border": "{{ accent }}20",
        "checkbox.background": "{{ background }}",
        "checkbox.foreground": "{{ foreground }}",
        "checkbox.border": "{{ muted }}",
        "checkbox.selectBackground": "{{ accent }}",
        "checkbox.selectBorder": "{{ accent }}",

        "dropdown.background": "{{ background }}",
        "dropdown.listBackground": "{{ background }}",
        "dropdown.border": "{{ muted }}",
        "dropdown.foreground": "{{ foreground }}",

        "input.background": "{{ background }}",
        "input.border": "{{ muted }}",
        "input.foreground": "{{ foreground }}",
        "input.placeholderForeground": "{{ muted }}",
        "inputOption.activeBackground": "{{ accent }}40",
        "inputOption.activeBorder": "{{ accent }}",
        "inputOption.activeForeground": "{{ foreground }}",
        "inputOption.hoverBackground": "{{ muted }}",
        "inputValidation.errorBackground": "{{ red }}20",
        "inputValidation.errorForeground": "{{ red }}",
        "inputValidation.errorBorder": "{{ red }}",
        "inputValidation.infoBackground": "{{ blue }}20",
        "inputValidation.infoForeground": "{{ blue }}",
        "inputValidation.infoBorder": "{{ blue }}",
        "inputValidation.warningBackground": "{{ yellow }}20",
        "inputValidation.warningForeground": "{{ yellow }}",

        "scrollbar.shadow": "{{ background }}",
        "scrollbarSlider.activeBackground": "{{ accent }}80",
        "scrollbarSlider.background": "{{ muted }}40",
        "scrollbarSlider.hoverBackground": "{{ muted }}80",

        "badge.background": "{{ accent }}",
        "badge.foreground": "{{ background }}",

        "progressBar.background": "{{ accent }}",

        "list.activeSelectionBackground": "{{ accent }}30",
        "list.activeSelectionForeground": "{{ foreground }}",
        "list.activeSelectionIconForeground": "{{ foreground }}",
        "list.dropBackground": "{{ accent }}20",
        "list.focusBackground": "{{ accent }}20",
        "list.focusForeground": "{{ foreground }}",
        "list.focusOutline": "{{ accent }}60",
        "list.highlightForeground": "{{ accent }}",
        "list.hoverBackground": "{{ background }}",
        "list.hoverForeground": "{{ foreground }}",
        "list.inactiveSelectionBackground": "{{ muted }}40",
        "list.inactiveSelectionForeground": "{{ foreground }}",
        "list.inactiveFocusBackground": "{{ muted }}40",
        "list.inactiveFocusOutline": "{{ muted }}",
        "list.invalidItemForeground": "{{ red }}",
        "list.errorForeground": "{{ red }}",
        "list.warningForeground": "{{ yellow }}",
        "listFilterWidget.background": "{{ background }}",
        "listFilterWidget.outline": "{{ accent }}",
        "listFilterWidget.noMatchesOutline": "{{ red }}",
        "list.filterMatchBackground": "{{ accent }}30",
        "list.filterMatchBorder": "{{ accent }}",
        "tree.indentGuidesStroke": "{{ muted }}",
        "tree.inactiveIndentGuidesStroke": "{{ muted }}60",
        "tree.tableColumnsBorder": "{{ muted }}",
        "tree.tableOddRowsBackground": "{{ background }}40",

        "activityBar.background": "{{ background }}",
        "activityBar.dropBorder": "{{ accent }}",
        "activityBar.foreground": "{{ foreground }}",
        "activityBar.inactiveForeground": "{{ muted }}",
        "activityBar.border": "{{ background }}",
        "activityBarBadge.background": "{{ accent }}",
        "activityBarBadge.foreground": "{{ background }}",
        "activityBar.activeBorder": "{{ accent }}",
        "activityBar.activeBackground": "{{ background }}40",

        "sideBar.background": "{{ background }}",
        "sideBar.foreground": "{{ foreground }}",
        "sideBar.border": "{{ background }}",
        "sideBar.dropBackground": "{{ accent }}20",
        "sideBarTitle.foreground": "{{ foreground }}",
        "sideBarSectionHeader.background": "{{ background }}",
        "sideBarSectionHeader.foreground": "{{ foreground }}",
        "sideBarSectionHeader.border": "{{ muted }}40",

        "minimap.findMatchHighlight": "{{ accent }}80",
        "minimap.selectionHighlight": "{{ accent }}60",
        "minimap.errorHighlight": "{{ red }}",
        "minimap.warningHighlight": "{{ yellow }}",
        "minimap.background": "{{ background }}",
        "minimap.selectionOccurrenceHighlight": "{{ accent }}40",
        "minimap.foregroundOpacity": "{{ background }}c0",
        "minimapSlider.background": "{{ muted }}20",
        "minimapSlider.hoverBackground": "{{ muted }}40",
        "minimapSlider.activeBackground": "{{ muted }}60",
        "minimapGutter.addedBackground": "{{ green }}",
        "minimapGutter.modifiedBackground": "{{ orange }}",
        "minimapGutter.deletedBackground": "{{ red }}",

        "editorGroup.border": "{{ muted }}40",
        "editorGroup.dropBackground": "{{ accent }}20",
        "editorGroup.dropIntoPromptForeground": "{{ foreground }}",
        "editorGroup.dropIntoPromptBackground": "{{ background }}",
        "editorGroup.dropIntoPromptBorder": "{{ accent }}",
        "editorGroupHeader.noTabsBackground": "{{ background }}",
        "editorGroupHeader.tabsBackground": "{{ background }}",
        "editorGroupHeader.tabsBorder": "{{ background }}",
        "editorGroupHeader.border": "{{ background }}",
        "editorGroup.emptyBackground": "{{ background }}",
        "tab.activeBackground": "{{ background }}",
        "tab.unfocusedActiveBackground": "{{ background }}",
        "tab.activeForeground": "{{ foreground }}",
        "tab.activeBorder": "{{ accent }}",
        "tab.activeBorderTop": "{{ accent }}",
        "tab.unfocusedActiveBorder": "{{ muted }}",
        "tab.unfocusedActiveBorderTop": "{{ muted }}",
        "tab.border": "{{ background }}",
        "tab.inactiveBackground": "{{ background }}",
        "tab.inactiveForeground": "{{ muted }}",
        "tab.unfocusedActiveForeground": "{{ foreground }}",
        "tab.unfocusedInactiveForeground": "{{ muted }}",
        "tab.hoverBackground": "{{ muted }}40",
        "tab.unfocusedHoverBackground": "{{ muted }}40",
        "tab.hoverForeground": "{{ foreground }}",
        "tab.hoverBorder": "{{ accent }}40",
        "tab.activeModifiedBorder": "{{ yellow }}",
        "tab.inactiveModifiedBorder": "{{ yellow }}80",

        "peekViewEditor.background": "{{ background }}",
        "peekViewResult.background": "{{ background }}",
        "peekViewTitle.background": "{{ background }}",
        "peekViewTitleLabel.foreground": "{{ foreground }}",
        "peekViewTitleDescription.foreground": "{{ muted }}",
        "peekViewBorder.color": "{{ accent }}",

        "merge.currentHeaderBackground": "{{ blue }}20",
        "merge.incomingHeaderBackground": "{{ magenta }}20",
        "merge.currentContentBackground": "{{ background }}",
        "merge.incomingContentBackground": "{{ background }}",
        "merge.border": "{{ muted }}40",

        "diffEditor.insertedLineBackground": "{{ green }}20",
        "diffEditor.removedLineBackground": "{{ red }}20",
        "diffEditor.insertedTextBackground": "{{ green }}40",
        "diffEditor.removedTextBackground": "{{ red }}40",
        "diffEditor.border": "{{ muted }}40",

        "notebook.output.baseBackground": "{{ background }}",
        "notebook.output.textErrorForeground": "{{ red }}",
        "notebook.output.textInfoForeground": "{{ blue }}",
        "notebook.output.textWarningForeground": "{{ yellow }}",

        "terminal.background": "{{ background }}",
        "terminal.foreground": "{{ foreground }}",
        "terminal.selectionBackground": "{{ selection_background }}80",
        "cursor.background": "{{ accent }}",
        "cursor.foreground": "{{ background }}",
        "terminal.ansiBlack": "{{ dark_background }}",
        "terminal.ansiRed": "{{ red }}",
        "terminal.ansiGreen": "{{ green }}",
        "terminal.ansiYellow": "{{ yellow }}",
        "terminal.ansiBlue": "{{ blue }}",
        "terminal.ansiMagenta": "{{ magenta }}",
        "terminal.ansiCyan": "{{ cyan }}",
        "terminal.ansiWhite": "{{ foreground }}",
        "terminal.ansiBrightBlack": "{{ muted }}",
        "terminal.ansiBrightRed": "{{ bright_red }}",
        "terminal.ansiBrightGreen": "{{ bright_green }}",
        "terminal.ansiBrightYellow": "{{ bright_yellow }}",
        "terminal.ansiBrightBlue": "{{ bright_blue }}",
        "terminal.ansiBrightMagenta": "{{ bright_magenta }}",
        "terminal.ansiBrightCyan": "{{ bright_cyan }}",
        "terminal.ansiBrightWhite": "{{ light_foreground }}",

        "editor.background": "{{ background }}",
        "editor.foreground": "{{ foreground }}",
        "editor.selectionBackground": "{{ selection_background }}",
        "editor.selectionHighlightBackground": "{{ accent }}30",
        "editor.wordHighlightBackground": "{{ accent }}20",
        "editor.wordHighlightStrongBackground": "{{ accent }}40",
        "editor.findMatchBackground": "{{ accent }}40",
        "editor.findMatchHighlightBackground": "{{ accent }}60",
        "editor.findRangeHighlightBackground": "{{ accent }}20",
        "editor.lineHighlightBackground": "{{ lighter_background }}",
        "editor.cursorBackground": "{{ accent }}",
        "editor.cursor.foreground": "{{ background }}",
        "editor.inactiveSelectionBackground": "{{ selection_background }}40",
        "editor.selectionHighlightBorder": "{{ accent }}",
        "editor.link.activeForeground": "{{ bright_blue }}",
        "editor.error.foreground": "{{ red }}",
        "editor.warning.foreground": "{{ yellow }}",
        "editor.info.foreground": "{{ blue }}",
        "editor.hint.foreground": "{{ cyan }}",
        "editor.bracketMatch.background": "{{ accent }}30",
        "editor.hoverHighlightBackground": "{{ accent }}20",
        "editor.rangeHighlightBackground": "{{ accent }}20",
        "editor.rangeHighlightBorder": "{{ accent }}",
        "editor.symbolHighlightBackground": "{{ accent }}20",
        "editor.stackFrameHighlightBackground": "{{ accent }}30",
        "editor.focusedStackFrameHighlightBackground": "{{ accent }}50",
        "editor.background": "{{ background }}",
        "editor.foreground": "{{ foreground }}"
    },
    "tokenColors": [
        {
            "scope": ["comment", "punctuation.definition.comment"],
            "settings": {
                "foreground": "{{ brown }}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": ["constant", "entity.name.constant", "variable.other.constant", "support.constant"],
            "settings": {
                "foreground": "{{ bright_yellow }}"
            }
        },
        {
            "scope": ["entity.name.type", "support.type", "meta.type"],
            "settings": {
                "foreground": "{{ yellow }}"
            }
        },
        {
            "scope": ["keyword", "storage.type", "storage.modifier"],
            "settings": {
                "foreground": "{{ magenta }}"
            }
        },
        {
            "scope": ["storage.type.class", "storage.type.function"],
            "settings": {
                "foreground": "{{ magenta }}"
            }
        },
        {
            "scope": ["entity.name.function", "support.function"],
            "settings": {
                "foreground": "{{ blue }}"
            }
        },
        {
            "scope": ["variable.function", "variable.language"],
            "settings": {
                "foreground": "{{ blue }}"
            }
        },
        {
            "scope": ["string", "string.quoted", "string.unquoted", "string.regexp", "string.template"],
            "settings": {
                "foreground": "{{ green }}"
            }
        },
        {
            "scope": ["constant.numeric", "constant.language.boolean"],
            "settings": {
                "foreground": "{{ orange }}"
            }
        },
        {
            "scope": ["entity.name.tag", "entity.name.namespace"],
            "settings": {
                "foreground": "{{ cyan }}"
            }
        },
        {
            "scope": ["entity.other.attribute-name", "support.type.property-name"],
            "settings": {
                "foreground": "{{ cyan }}"
            }
        },
        {
            "scope": ["punctuation", "meta.brace", "meta.tag"],
            "settings": {
                "foreground": "{{ muted }}"
            }
        },
        {
            "scope": ["keyword.control.import", "keyword.control.export", "keyword.control.from"],
            "settings": {
                "foreground": "{{ magenta }}"
            }
        },
        {
            "scope": ["keyword.operator", "keyword.operator.new", "keyword.operator.assignment"],
            "settings": {
                "foreground": "{{ bright_blue }}"
            }
        },
        {
            "scope": ["support.function.builtin", "support.function.any-method"],
            "settings": {
                "foreground": "{{ blue }}"
            }
        },
        {
            "scope": ["variable.parameter", "variable.other.readwrite"],
            "settings": {
                "foreground": "{{ cyan }}"
            }
        },
        {
            "scope": ["invalid", "invalid.deprecated"],
            "settings": {
                "foreground": "{{ red }}",
                "fontStyle": "italic underline"
            }
        },
        {
            "scope": ["diff.header", "diff.deleted"],
            "settings": {
                "foreground": "{{ red }}"
            }
        },
        {
            "scope": ["diff.inserted", "diff.changed"],
            "settings": {
                "foreground": "{{ green }}"
            }
        },
        {
            "scope": ["markup.heading", "markup.heading.1", "markup.heading.2", "markup.heading.3"],
            "settings": {
                "foreground": "{{ blue }}",
                "fontStyle": "bold"
            }
        },
        {
            "scope": ["markup.bold"],
            "settings": {
                "foreground": "{{ foreground }}",
                "fontStyle": "bold"
            }
        },
        {
            "scope": ["markup.italic"],
            "settings": {
                "foreground": "{{ foreground }}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": ["markup.link", "string.other.link"],
            "settings": {
                "foreground": "{{ cyan }}"
            }
        },
        {
            "scope": ["markup.inline.raw", "markup.fenced_code.block", "string.regexp"],
            "settings": {
                "foreground": "{{ green }}"
            }
        },
        {
            "scope": ["markup.quote", "punctuation.definition.quote"],
            "settings": {
                "foreground": "{{ brown }}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": ["markup.list", "punctuation.definition.list"],
            "settings": {
                "foreground": "{{ cyan }}"
            }
        },
        {
            "scope": ["meta.object-literal.key", "string.unquoted.label.js"],
            "settings": {
                "foreground": "{{ foreground }}"
            }
        },
        {
            "scope": ["support.class", "support.type", "support.type.primitive"],
            "settings": {
                "foreground": "{{ yellow }}"
            }
        },
        {
            "scope": ["keyword.other.special-method", "variable.language.special.self"],
            "settings": {
                "foreground": "{{ foreground }}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": ["constant.character", "constant.escape"],
            "settings": {
                "foreground": "{{ bright_cyan }}"
            }
        },
        {
            "scope": ["entity.name.section", "entity.name.section.markdown"],
            "settings": {
                "foreground": "{{ yellow }}",
                "fontStyle": "bold"
            }
        },
        {
            "scope": ["keyword.other.unit", "keyword.other.type"],
            "settings": {
                "foreground": "{{ magenta }}"
            }
        }
    ]
}