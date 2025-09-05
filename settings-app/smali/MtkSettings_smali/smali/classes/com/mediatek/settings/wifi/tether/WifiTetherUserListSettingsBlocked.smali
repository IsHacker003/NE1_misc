.class public Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettingsBlocked;
.super Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;
.source "WifiTetherUserListSettingsBlocked.java"


# instance fields
.field private mUserMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettingsBlocked;->mUserMode:I

    .line 58
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "WifiTetherUserListSettingsBlocked"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 95
    const v0, 0x7f1500c7    # @xml/wifi_tether_user_settings_blocked 'res/xml/wifi_tether_user_settings_blocked.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->onAttach(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->onResume()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->onStart()V

    .line 85
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->onStop()V

    .line 91
    return-void
.end method
