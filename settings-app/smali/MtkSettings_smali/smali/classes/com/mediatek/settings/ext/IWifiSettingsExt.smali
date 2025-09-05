.class public interface abstract Lcom/mediatek/settings/ext/IWifiSettingsExt;
.super Ljava/lang/Object;
.source "IWifiSettingsExt.java"


# virtual methods
.method public abstract addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V
.end method

.method public abstract addRefreshPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/Object;Z)V
.end method

.method public abstract customRefreshButtonClick(Landroid/support/v7/preference/Preference;)Z
.end method

.method public abstract customRefreshButtonStatus(Z)V
.end method

.method public abstract disconnect(Landroid/view/MenuItem;Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract emptyConneCategory(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract emptyScreen(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract init(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract recordPriority(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract refreshCategory(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract registerPriorityObserver(Landroid/content/ContentResolver;)V
.end method

.method public abstract removeConnectedAccessPointPreference()Z
.end method

.method public abstract setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract submit(Landroid/net/wifi/WifiConfiguration;Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/NetworkInfo$DetailedState;)V
.end method

.method public abstract unregisterPriorityObserver(Landroid/content/ContentResolver;)V
.end method

.method public abstract updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V
.end method

.method public abstract updatePriority()V
.end method

.method public abstract updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
.end method
