.class public Lcom/android/settings/notification/ZenModeMediaPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeMediaPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 35
    const-string v0, "zen_mode_media"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 36
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeMediaPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 37
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "zen_mode_media"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 73
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 74
    const-string p2, "PrefControllerMixin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefChange allowMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeMediaPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v0, 0x40

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    .line 77
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeMediaPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMediaPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 61
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 62
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 58
    nop

    .line 68
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
