.class public abstract Lcom/android/settings/applications/AppStateAppOpsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsOpCodes:[I

.field private final mContext:Landroid/content/Context;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V
    .locals 7

    .line 60
    nop

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 68
    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    .line 69
    iput-object p6, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 70
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    .line 71
    iget-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    .line 72
    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 73
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p4, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    .line 74
    iput-object p5, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method private doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 90
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return v1
.end method

.method private getEntries()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;"
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 159
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 160
    iget-object v7, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v6}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 161
    if-eqz v6, :cond_0

    .line 162
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    return-object v0

    .line 173
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 174
    iget-object v4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 175
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 177
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 179
    iget-object v10, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v10, v9, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v10

    .line 181
    invoke-direct {p0, v9}, Lcom/android/settings/applications/AppStateAppOpsBridge;->shouldIgnorePackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v10, :cond_3

    .line 182
    new-instance v10, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v10, v9, v5}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 183
    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_3
    goto :goto_2

    .line 186
    :cond_4
    goto :goto_1

    .line 188
    :cond_5
    return-object v3

    .line 189
    :catch_0
    move-exception v2

    .line 190
    const-string v3, "AppStateAppOpsBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager is dead. Can\'t get list of packages requesting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    aget-object v1, v5, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    return-object v0
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 81
    const/4 p1, 0x1

    return p1

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return v1
.end method

.method private loadAppOpsStates(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 242
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 243
    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_5

    .line 244
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 245
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 246
    invoke-direct {p0, v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 248
    goto/16 :goto_2

    .line 251
    :cond_1
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 252
    if-nez v6, :cond_2

    .line 253
    goto :goto_2

    .line 255
    :cond_2
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    .line 256
    if-nez v6, :cond_3

    .line 257
    const-string v6, "AppStateAppOpsBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppOp permission exists for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of user "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but package doesn\'t exist or did not request "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " access"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_4

    .line 264
    const-string v5, "AppStateAppOpsBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No AppOps permission exists for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_2

    .line 267
    :cond_4
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    iput v4, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    .line 243
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 269
    :cond_5
    return-void
.end method

.method private loadPermissionsStates(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    .line 202
    if-nez p1, :cond_0

    .line 203
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 208
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 209
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 210
    if-nez v2, :cond_1

    .line 211
    goto :goto_0

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 215
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 218
    :cond_2
    move v3, v5

    :goto_1
    if-ge v5, v3, :cond_4

    .line 219
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 220
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    .line 221
    if-eqz v6, :cond_3

    .line 222
    iput-object v4, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    :cond_4
    goto :goto_0

    .line 231
    :cond_5
    nop

    .line 232
    return-void

    .line 227
    :catch_0
    move-exception p1

    .line 228
    const-string v0, "AppStateAppOpsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager is dead. Can\'t get list of packages granted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    return-void
.end method

.method private shouldIgnorePackage(Ljava/lang/String;)Z
    .locals 1

    .line 275
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 7

    .line 99
    new-instance v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    new-instance v1, Landroid/os/UserHandle;

    .line 100
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v2, 0x401000

    iget-object v3, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    .line 104
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 102
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 105
    iget-object v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 108
    iget-object v3, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 109
    if-eqz v1, :cond_1

    .line 110
    move v4, v2

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 111
    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    .line 113
    aget v6, v3, v4

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 115
    iput-boolean v5, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    .line 116
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    invoke-virtual {v1, p2, p1, v3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p2

    .line 124
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 125
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result p2

    iput p2, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_2
    goto :goto_2

    .line 127
    :catch_0
    move-exception p2

    .line 128
    const-string v1, "AppStateAppOpsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager is dead. Can\'t get package info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_2
    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 7

    .line 135
    invoke-direct {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getEntries()Landroid/util/SparseArray;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadPermissionsStates(Landroid/util/SparseArray;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadAppOpsStates(Landroid/util/SparseArray;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 144
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 145
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 146
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 147
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 148
    if-eqz v5, :cond_0

    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
