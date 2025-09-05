.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    return-void
.end method

.method private parseIntent()Z
    .locals 5

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 164
    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    .line 165
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    .line 176
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 177
    if-nez v0, :cond_3

    .line 178
    const-string v0, "RequestPermissionHelperActivity"

    const-string v2, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v1

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings.bluetooth.extra.APP_LABEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 186
    return v4

    .line 173
    :cond_4
    return v1
.end method


# virtual methods
.method createDialog()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 90
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 114
    const v1, 0x7f12025f    # @string/bluetooth_ask_disablement '%1$s wants to turn off Bluetooth'

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    const v1, 0x7f120260    # @string/bluetooth_ask_disablement_no_name 'An app wants to turn off Bluetooth'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 92
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-gez v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 94
    const v1, 0x7f120263    # @string/bluetooth_ask_enablement '%1$s wants to turn on Bluetooth'

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_3
    const v1, 0x7f120268    # @string/bluetooth_ask_enablement_no_name 'An app wants to turn on Bluetooth'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    .line 96
    :cond_4
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_6

    .line 97
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 98
    const v1, 0x7f120266    # @string/bluetooth_ask_enablement_and_lasting_discovery '%1$s wants to turn on Bluetooth and make your phone visible to other devices. You can change this la ...'

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 101
    :cond_5
    const v1, 0x7f120267    # @string/bluetooth_ask_enablement_and_lasting_discovery_no_name 'An app wants to turn on Bluetooth and make your phone visible to other devices. You can change this  ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 105
    const v1, 0x7f120264    # @string/bluetooth_ask_enablement_and_discovery '%1$s wants to turn on Bluetooth and make your phone visible to other devices for %2$d seconds.'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 105
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 107
    :cond_7
    const v1, 0x7f120265    # @string/bluetooth_ask_enablement_and_discovery_no_name 'An app wants to turn on Bluetooth and make your phone visible to other devices for %1$d seconds.'

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 107
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 110
    nop

    .line 119
    :goto_4
    const v1, 0x7f1200d1    # @string/allow 'Allow'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    const v1, 0x7f120515    # @string/deny 'Deny'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 124
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 127
    iget p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 p2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 146
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    .line 130
    :pswitch_1
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 131
    const-string v0, "no_bluetooth"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 135
    const-string p2, "no_bluetooth"

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 143
    :goto_0
    nop

    .line 150
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050003    # @bool/auto_confirm_bluetooth_activation_dialog 'false'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->dismiss()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    .line 85
    return-void
.end method
