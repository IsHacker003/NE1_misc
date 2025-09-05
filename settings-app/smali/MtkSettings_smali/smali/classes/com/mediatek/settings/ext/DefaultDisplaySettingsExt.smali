.class public Lcom/mediatek/settings/ext/DefaultDisplaySettingsExt;
.super Ljava/lang/Object;
.source "DefaultDisplaySettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDisplaySettingsExt;


# static fields
.field private static final KEY_CUSTOM_FONT_SIZE:Ljava/lang/String; = "custom_font_size"

.field private static final TAG:Ljava/lang/String; = "DefaultDisplaySettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultDisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 24
    return-void
.end method

.method public getFontEntries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 40
    return-object p1
.end method

.method public getFontEntryValues([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 45
    return-object p1
.end method

.method public isCustomPrefPresent()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public removePreference(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 28
    const-string p1, "custom_font_size"

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 30
    const-string p1, "DefaultDisplaySettingsExt"

    const-string p2, "removePreference KEY_CUSTOM_FONT_SIZE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
