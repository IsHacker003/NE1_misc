.class public Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2, p3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public addRefreshPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/Object;Z)V
    .locals 0

    .line 85
    return-void
.end method

.method public customRefreshButtonClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 89
    const/4 p1, 0x0

    return p1
.end method

.method public customRefreshButtonStatus(Z)V
    .locals 0

    .line 94
    return-void
.end method

.method public disconnect(Landroid/view/MenuItem;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 55
    const/4 p1, 0x0

    return p1
.end method

.method public emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 37
    return-void
.end method

.method public emptyConneCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 74
    return-void
.end method

.method public emptyScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 40
    return-void
.end method

.method public init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 67
    return-void
.end method

.method public recordPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 46
    return-void
.end method

.method public refreshCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 43
    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 21
    return-void
.end method

.method public removeConnectedAccessPointPreference()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 27
    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 49
    return-void
.end method

.method public submit(Landroid/net/wifi/WifiConfiguration;Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 79
    return-void
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 24
    return-void
.end method

.method public updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 34
    return-void
.end method

.method public updatePriority()V
    .locals 0

    .line 30
    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 52
    return-void
.end method
