.class public Lcom/mediatek/settings/ext/DefaultApnSettingsExt;
.super Ljava/lang/Object;
.source "DefaultApnSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IApnSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultApnSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addApnTypeExtra(Landroid/content/Intent;)V
    .locals 0

    .line 125
    return-void
.end method

.method public customerUserEditable(I)Z
    .locals 0

    .line 228
    const/4 p1, 0x1

    return p1
.end method

.method public customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 149
    return-object p1
.end method

.method public customizePreference(ILandroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 145
    return-void
.end method

.method public customizeTetherApnSettings(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 43
    return-void
.end method

.method public customizeUnselectableApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 194
    return-void
.end method

.method public getApnSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 212
    return-object p1
.end method

.method public getApnTypeArray([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 105
    return-object p1
.end method

.method public getFillListQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    return-object p1
.end method

.method public getOperatorNumericFromImpi(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 223
    return-object p1
.end method

.method public getPreferCarrierUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0

    .line 71
    return-object p1
.end method

.method public getScreenEnableState(ILandroid/app/Activity;)Z
    .locals 0

    .line 115
    const/4 p1, 0x1

    return p1
.end method

.method public getUriFromIntent(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 0

    .line 93
    return-object p1
.end method

.method public initTetherField(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 29
    return-void
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 37
    const-string p1, "DefaultApnSettingsExt"

    const-string p2, "isAllowEditPresetApn"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 p1, 0x1

    return p1
.end method

.method public isSelectable(Ljava/lang/String;)Z
    .locals 0

    .line 110
    const/4 p1, 0x1

    return p1
.end method

.method public onApnSettingsEvent(I)V
    .locals 1

    .line 245
    const-string p1, "DefaultApnSettingsExt"

    const-string v0, "onApnSettingsEvent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 25
    return-void
.end method

.method public replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 0

    .line 175
    return-wide p1
.end method

.method public saveApnValues(Landroid/content/ContentValues;)V
    .locals 0

    .line 154
    return-void
.end method

.method public setApnTypePreferenceState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 82
    return-void
.end method

.method public setMvnoPreferenceState(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 203
    return-void
.end method

.method public setPreferenceTextAndSummary(ILjava/lang/String;)V
    .locals 0

    .line 141
    return-void
.end method

.method public shouldSelectFirstApn()Z
    .locals 2

    .line 236
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "shouldSelectFirstApn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public updateApnName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 158
    return-object p1
.end method

.method public updateFieldsStatus(IILandroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .line 137
    return-void
.end method

.method public updateMenu(Landroid/view/Menu;IILjava/lang/String;)V
    .locals 0

    .line 121
    return-void
.end method

.method public updateTetherState()V
    .locals 0

    .line 61
    return-void
.end method
