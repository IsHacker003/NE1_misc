.class public Lcom/android/settings/wifi/tether/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EntitlementResult"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCurrentTethers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTypeIndex:I

.field private mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

.field private mInProvisionCheck:Z

.field private mPendingCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/os/ResultReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsageManagerWrapper:Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 346
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$2;-><init>(Lcom/android/settings/wifi/tether/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/TetherService;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    return p0
.end method

.method static synthetic access$204(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 1

    .line 48
    iget v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableWifiTethering()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableBtTethering()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableUsbTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/tether/TetherService;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->fireCallbacksForType(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/tether/TetherService;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    return-void
.end method

.method public static cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V
    .locals 2

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    return-void
.end method

.method private disableBtTethering()V
    .locals 3

    .line 232
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/tether/TetherService$1;-><init>(Lcom/android/settings/wifi/tether/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 245
    :cond_0
    return-void
.end method

.method private disableUsbTethering()V
    .locals 2

    .line 226
    const-string v0, "connectivity"

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 229
    return-void
.end method

.method private disableWifiTethering()V
    .locals 2

    .line 220
    const-string v0, "connectivity"

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 223
    return-void
.end method

.method private fireCallbacksForType(II)V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 334
    if-nez p1, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 338
    :cond_1
    const/16 p2, 0xb

    .line 339
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 340
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 342
    goto :goto_1

    .line 343
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 344
    return-void
.end method

.method private getProvisionBroadcastIntent(I)Landroid/content/Intent;
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040158    # @android:string/config_ntpServer

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 265
    const-string v0, "TETHER_TYPE"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const/high16 p1, 0x11000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    return-object v1
.end method

.method private removeTypeAtIndex(I)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTypeIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    if-gt p1, v0, :cond_1

    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    if-lez p1, :cond_1

    .line 186
    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    .line 188
    :cond_1
    return-void
.end method

.method private setEntitlementAppActive(I)V
    .locals 3

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 275
    nop

    .line 276
    const/high16 v1, 0x20000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 277
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string p1, "TetherService"

    const-string v0, "No found BroadcastReceivers for provision intent."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 282
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 283
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mUsageManagerWrapper:Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;->setAppInactive(Ljava/lang/String;Z)V

    .line 287
    :cond_1
    goto :goto_0

    .line 288
    :cond_2
    return-void
.end method

.method private startProvisioning(I)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 250
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->setEntitlementAppActive(I)V

    .line 252
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending provisioning broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    .line 258
    :cond_1
    return-void
.end method

.method private stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 199
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 200
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 201
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    return-object v0
.end method

.method private tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 210
    if-eqz v2, :cond_0

    .line 211
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unregisterReceivers()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->unregister()V

    .line 178
    return-void
.end method


# virtual methods
.method cancelAlarmIfNecessary()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Tethering still active, not cancelling alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void

    .line 324
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 326
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 327
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 328
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "TetherService"

    const-string v1, "Tethering no longer active, canceling recheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->unregister()V

    .line 330
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 75
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Creating TetherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040159    # @android:string/config_packagedKeyboardName

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/wifi/tether/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    const-string v0, "tetherPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    const-string v2, "currentTethers"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 88
    iput v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mUsageManagerWrapper:Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mUsageManagerWrapper:Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;

    .line 97
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 163
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    .line 165
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const-string v0, "tetherPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentTethers"

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/TetherService;->tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->unregisterReceivers()V

    .line 171
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TetherService"

    const-string v1, "Destroying TetherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 173
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 102
    const-string p2, "extraAddTetherType"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p2, :cond_3

    .line 103
    const-string p2, "extraAddTetherType"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 105
    const-string v3, "extraProvisionCallback"

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 107
    if-eqz v3, :cond_1

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 109
    if-eqz v4, :cond_0

    .line 110
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v3, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    .line 115
    return v0

    .line 119
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    sget-boolean v3, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding tether "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_3
    const-string p2, "extraRemTetherType"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 126
    iget-boolean p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p2, :cond_6

    .line 127
    const-string p2, "extraRemTetherType"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 130
    sget-boolean v3, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "TetherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing tether "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", index "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_4
    if-ltz v2, :cond_5

    .line 132
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/TetherService;->removeTypeAtIndex(I)V

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->cancelAlarmIfNecessary()V

    .line 135
    goto :goto_1

    .line 136
    :cond_6
    sget-boolean p2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p2, :cond_7

    const-string p2, "TetherService"

    const-string v2, "Don\'t cancel alarm during provisioning"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_7
    :goto_1
    const-string p2, "extraSetAlarm"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->scheduleAlarm()V

    .line 148
    :cond_8
    const-string p2, "extraRunProvision"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 149
    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    goto :goto_2

    .line 150
    :cond_9
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p1, :cond_b

    .line 152
    sget-boolean p1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p1, :cond_a

    const-string p1, "TetherService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping self.  startid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    .line 154
    return v0

    .line 158
    :cond_b
    :goto_2
    const/4 p1, 0x3

    return p1
.end method

.method scheduleAlarm()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 296
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0065    # @android:integer/config_mobile_mtu

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 299
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v6, v0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, v6

    .line 301
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling alarm at interval "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->register()V

    .line 305
    return-void
.end method

.method setHotspotOffReceiver(Lcom/android/settings/wifi/tether/HotspotOffReceiver;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    .line 193
    return-void
.end method

.method setUsageStatsManagerWrapper(Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mUsageManagerWrapper:Lcom/android/settings/wifi/tether/TetherService$UsageStatsManagerWrapper;

    .line 390
    return-void
.end method
