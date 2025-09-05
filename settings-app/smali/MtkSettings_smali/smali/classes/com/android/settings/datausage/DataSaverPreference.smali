.class public Lcom/android/settings/datausage/DataSaverPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 29
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 34
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 35
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    .line 54
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 45
    if-eqz p1, :cond_0

    const p1, 0x7f120466    # @string/data_saver_on 'On'

    goto :goto_0

    :cond_0
    const p1, 0x7f120465    # @string/data_saver_off 'Off'

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(I)V

    .line 46
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 40
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 41
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    .line 50
    return-void
.end method
