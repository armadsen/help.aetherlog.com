# Hidden Preferences

## How To

Aether includes several hidden preferences that can be changed from the command line in a Terminal window. This is done using macOS's built in "defaults" tool. The command structure to set a hidden preference is:

```
defaults write com.openreelsoftware.Aether [parameter] -[type] [value]
```

To go back to the default:

```
defaults delete com.openreelsoftware.Aether [parameter]
```

You must restart Aether after changing hidden preferences for the changes to take effect.

## Available Hidden Preferences


| Parameter                     | Type  | Default | Description                                                                                  |
| ----------------------------- | ----- | ------- | -------------------------------------------------------------------------------------------- |
| UseFloatingNoteWindow         | bool  | false   | Use old-style floating notes panel instead of builtin notes box.                             |
| DrawConnectingLinesInKML      | bool  | true    | Draw lines between your station and contacted stations in exported Google Earth (KML) files. |
| UseRTSForPTT                  | bool  | true    | If this is true the RTS line is used for Push To Talk (PTT), if false, the DTR line is used. |
| ShowNotesInNewDocuments       | bool  | true    | If this is true, the notes box is visible by default in newly created logs.                  |
| ClearCallbookInfoBeforeLookup | bool  | false   | Set this to true to clear all callbook info fields before looking up callbook info.          |
| AmplifierGain                 | float | 1.0     | Multiplication factor for power level coming from rig via rig control.                       |



## Example

For example to set amplifier gain to 5.0, open Terminal (in /Applications/Utilities), type the following command, then press return:

```
defaults write com.openreelsoftware.Aether AmplifierGain -float 5.0
```

To go back to the default value (gain of 1.0) issue the following command:

```
defaults delete com.openreelsoftware.Aether AmplifierGain
```

Note that this page lists hidden preferences in the latest version of Aether. Older versions may not support all the preferences listed here. If you have any questions, please contact [Aether support](mailto:support@aetherlog.com).