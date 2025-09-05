.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field private mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mMetricsEvent:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private final mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 60
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 83
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 84
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 86
    iput p5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    .line 88
    if-nez p4, :cond_0

    .line 90
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 91
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 95
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iput-object p6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 97
    return-void
.end method

.method public static getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 258
    const-string v0, "no_bluetooth"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    const-string v0, "no_config_bluetooth"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 264
    :cond_0
    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 182
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 186
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 190
    :cond_1
    return-void
.end method

.method private triggerParentPreferenceCallback(Z)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 159
    goto :goto_0

    .line 147
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 148
    const-string p1, "BluetoothEnabler"

    const-string v2, "Begin update status: turn on set mUpdateStatusOnly to true"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 154
    const-string p1, "BluetoothEnabler"

    const-string v0, "End update status: turn on set mUpdateStatusOnly to false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    goto :goto_0

    .line 143
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 144
    goto :goto_0

    .line 162
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 163
    const-string p1, "BluetoothEnabler"

    const-string v2, "Begin update status: turn off set mUpdateStatusOnly to true"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 168
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 169
    const-string p1, "BluetoothEnabler"

    const-string v0, "End update status: turn off set mUpdateStatusOnly to false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    nop

    .line 176
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method maybeEnforceRestrictions()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 249
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onSwitchToggled(Z)Z
    .locals 5

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 196
    return v1

    .line 198
    :cond_0
    const-string v0, "BluetoothEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchChanged to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 201
    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f12105c    # @string/wifi_in_airplane_mode 'In Airplane mode'

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 205
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 206
    return v0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 211
    const-string v2, "BluetoothEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUpdateStatusOnly is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    if-nez v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v2

    .line 218
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 219
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->updateTitle(Z)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 223
    return v0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    .line 228
    return v1
.end method

.method public pause()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 138
    :cond_1
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 116
    return-void

    .line 120
    :cond_1
    if-nez p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 125
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 127
    return-void
.end method

.method public setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 238
    return-void
.end method
