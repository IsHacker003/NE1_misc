.class public interface abstract Lcom/mediatek/settings/ext/IWfcSettingsExt;
.super Ljava/lang/Object;
.source "IWfcSettingsExt.java"


# virtual methods
.method public abstract addOtherCustomPreference()V
.end method

.method public abstract customizedWfcPreference(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract getWfcSummary(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V
.end method

.method public abstract isWifiCallingProvisioned(Landroid/content/Context;I)Z
.end method

.method public abstract onWfcSettingsEvent(I)V
.end method

.method public abstract onWirelessSettingsEvent(I)V
.end method

.method public abstract showWfcTetheringAlertDialog(Landroid/content/Context;)Z
.end method

.method public abstract updateWfcModePreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/ListPreference;ZI)V
.end method
