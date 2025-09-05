.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
    }
.end annotation


# static fields
.field private static mRequestCode:I


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    return-void
.end method

.method private cancelAndFinish()V
    .locals 1

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 297
    return-void
.end method

.method private createDialog()V
    .locals 6

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003    # @bool/auto_confirm_bluetooth_activation_dialog 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 162
    return-void

    .line 165
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 169
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    packed-switch v1, :pswitch_data_0

    .line 176
    const v1, 0x7f12033a    # @string/bluetooth_turning_off 'Turning Bluetooth off…'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 172
    :pswitch_0
    const v1, 0x7f12033b    # @string/bluetooth_turning_on 'Turning Bluetooth on…'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    nop

    .line 179
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 183
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 185
    const v1, 0x7f120269    # @string/bluetooth_ask_lasting_discovery '%1$s wants to make your phone visible to other Bluetooth devices. You can change this later in Bluet ...'

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 186
    :cond_2
    const v1, 0x7f12026a    # @string/bluetooth_ask_lasting_discovery_no_name 'An app wants to make your phone visible to other Bluetooth devices. You can change this later in Blu ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    goto :goto_3

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 190
    const v1, 0x7f120261    # @string/bluetooth_ask_discovery '%1$s wants to make your phone visible to other Bluetooth devices for %2$d seconds.'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 191
    :cond_4
    const v1, 0x7f120262    # @string/bluetooth_ask_discovery_no_name 'An app wants to make your phone visible to other Bluetooth devices for %1$d seconds.'

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    :goto_3
    const v1, 0x7f1200d1    # @string/allow 'Allow'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x7f120515    # @string/deny 'Deny'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    :goto_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 200
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseIntent()Z
    .locals 6

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 305
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 306
    return v1

    .line 308
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 309
    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 313
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    .line 314
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v4, 0x78

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 317
    const-string v0, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v2, 0xe10

    if-le v0, v2, :cond_4

    .line 320
    :cond_3
    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 330
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 331
    if-nez v0, :cond_5

    .line 332
    const-string v0, "RequestPermissionActivity"

    const-string v2, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 334
    return v1

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string v0, "RequestPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find app with package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 349
    return v1

    .line 353
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 355
    return v3

    .line 323
    :cond_8
    const-string v0, "RequestPermissionActivity"

    const-string v2, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 327
    return v1
.end method

.method private proceedAndFinish()V
    .locals 8

    .line 265
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 272
    invoke-static {p0, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 274
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v0, :cond_1

    .line 275
    invoke-static {p0, v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 277
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 279
    if-ge v0, v1, :cond_2

    .line 280
    nop

    .line 282
    move v0, v1

    :cond_2
    goto :goto_1

    .line 283
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 267
    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    .line 287
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 292
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 205
    sget p3, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    add-int/lit8 p3, p3, -0x1

    if-eq p1, p3, :cond_0

    .line 206
    const-string p3, "RequestPermissionActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 209
    return-void

    .line 212
    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    .line 214
    return-void

    .line 217
    :cond_1
    iget p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 236
    :cond_2
    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 241
    goto :goto_0

    .line 220
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 224
    :cond_3
    new-instance p1, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 229
    nop

    .line 247
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 371
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 250
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    .line 253
    goto :goto_0

    .line 256
    :pswitch_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 260
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 83
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 106
    const-string p1, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown adapter state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    .line 108
    goto/16 :goto_0

    .line 97
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "com.android.settings.bluetooth.extra.APP_LABEL"

    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 99
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    goto :goto_0

    .line 92
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    .line 93
    goto :goto_0

    .line 111
    :cond_1
    const/4 p1, 0x1

    packed-switch v0, :pswitch_data_1

    .line 152
    const-string p1, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown adapter state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    goto :goto_0

    .line 142
    :pswitch_2
    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    if-ne v0, p1, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    .line 149
    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    const-string v1, "com.android.settings.bluetooth.extra.APP_LABEL"

    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 133
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequest:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 134
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :cond_3
    sget v1, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    sget v0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    add-int/2addr v0, p1

    sput v0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    .line 139
    nop

    .line 157
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    :cond_0
    return-void
.end method
