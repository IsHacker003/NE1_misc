.class public interface abstract Lcom/mediatek/settings/ext/IApnSettingsExt;
.super Ljava/lang/Object;
.source "IApnSettingsExt.java"


# static fields
.field public static final PAUSE:I = 0x1

.field public static final RESUME:I


# virtual methods
.method public abstract addApnTypeExtra(Landroid/content/Intent;)V
.end method

.method public abstract customerUserEditable(I)Z
.end method

.method public abstract customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract customizePreference(ILandroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract customizeTetherApnSettings(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract customizeUnselectableApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
.end method

.method public abstract getApnSortOrder(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApnTypeArray([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getFillListQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOperatorNumericFromImpi(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getPreferCarrierUri(Landroid/net/Uri;I)Landroid/net/Uri;
.end method

.method public abstract getScreenEnableState(ILandroid/app/Activity;)Z
.end method

.method public abstract getUriFromIntent(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method public abstract initTetherField(Landroid/support/v14/preference/PreferenceFragment;)V
.end method

.method public abstract isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract isSelectable(Ljava/lang/String;)Z
.end method

.method public abstract onApnSettingsEvent(I)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
.end method

.method public abstract saveApnValues(Landroid/content/ContentValues;)V
.end method

.method public abstract setApnTypePreferenceState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
.end method

.method public abstract setMvnoPreferenceState(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)V
.end method

.method public abstract setPreferenceTextAndSummary(ILjava/lang/String;)V
.end method

.method public abstract shouldSelectFirstApn()Z
.end method

.method public abstract updateApnName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract updateFieldsStatus(IILandroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
.end method

.method public abstract updateMenu(Landroid/view/Menu;IILjava/lang/String;)V
.end method

.method public abstract updateTetherState()V
.end method
