.class public Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;
.super Lcom/android/settings/datetime/AutoTimePreferenceController;
.source "AutoTimeExtPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;
    }
.end annotation


# instance fields
.field private mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

.field private final mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 57
    iput-object p2, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;

    .line 58
    return-void
.end method

.method private enableGPS()V
    .locals 3

    .line 182
    const-string v0, "AutoTimeExtPreferenceContr"

    const-string v1, "enable GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    .line 183
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method private getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method private isAutoTimeGPSEnabled()Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isAutoTimeNetworkEnabled()Z
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isGpsEnabled()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    .line 177
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setAutoState(Ljava/lang/String;I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    return-void
.end method

.method private updateSummaryAndValue(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/RestrictedListPreference;->setValueIndex(I)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method


# virtual methods
.method public buildGPSConfirmDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f1206b6    # @string/gps_time_sync_attention_gps_on 'It will take at most 1 minute to obtain GPS fix. Besides, GPS may fail to provide time due to weak e ...'

    goto :goto_0

    .line 119
    :cond_0
    const v0, 0x7f1206b5    # @string/gps_time_sync_attention_gps_off 'To use GPS provided time, you must enable GPS first. It then take at most 1 minute to obtain GPS fix ...'

    .line 121
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120ab8    # @string/proxy_error 'Attention'

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1080027    # @android:drawable/ic_dialog_alert

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040013    # @android:string/yes

    .line 125
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009    # @android:string/no

    .line 126
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 121
    return-object p1
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 63
    const-string v0, "auto_time"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    iput-object p1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    .line 64
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .line 167
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeNetworkEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeGPSEnabled()Z

    move-result v1

    or-int/2addr v0, v1

    .line 168
    const-string v1, "AutoTimeExtPreferenceContr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeNetworkEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", GPS :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeGPSEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 133
    const-string p1, "AutoTimeExtPreferenceContr"

    const-string p2, "Enable GPS time sync"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isGpsEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->enableGPS()V

    .line 137
    :cond_0
    const-string p1, "auto_time"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    .line 138
    const-string p1, "auto_time_gps"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    .line 139
    iget-object p1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/RestrictedListPreference;->setValueIndex(I)V

    .line 140
    iget-object p1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;

    iget-object p2, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 143
    const-string p1, "AutoTimeExtPreferenceContr"

    const-string p2, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->reSetAutoTimePref()V

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 92
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 93
    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    const-string v1, "auto_time"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    .line 105
    const-string v1, "auto_time_gps"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeGPSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;

    invoke-interface {v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;->showGPSConfirmDialog()V

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v1, "auto_time"

    invoke-direct {p0, v1, p2}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    .line 96
    const-string v1, "auto_time_gps"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->setAutoState(Ljava/lang/String;I)V

    .line 97
    nop

    .line 109
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->updateSummaryAndValue(I)V

    .line 110
    iget-object p1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;

    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 111
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reSetAutoTimePref()V
    .locals 4

    .line 149
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeNetworkEnabled()Z

    move-result v0

    .line 150
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeGPSEnabled()Z

    move-result v1

    .line 151
    nop

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    if-eqz v1, :cond_1

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x2

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/RestrictedListPreference;->setValueIndex(I)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mAutoTimePref:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v2}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    const-string v1, "AutoTimeExtPreferenceContr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset AutoTimePref as cancel the selection, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mCallback:Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;

    iget-object v1, p0, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 68
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    nop

    .line 75
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 78
    :cond_1
    nop

    .line 79
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeNetworkEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->isAutoTimeGPSEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    const/4 p1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    const/4 p1, 0x2

    .line 86
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->updateSummaryAndValue(I)V

    .line 87
    return-void
.end method
