.class public Lcom/android/settingslib/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 0

    .line 53
    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method private buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;
    .locals 16

    move-object/from16 v0, p0

    .line 105
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    iget-object v3, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 108
    new-instance v4, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v4}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    .line 109
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_8

    packed-switch v1, :pswitch_data_0

    .line 132
    iget-object v2, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v5

    .line 137
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 138
    if-eqz v5, :cond_0

    .line 139
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 140
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v5}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    return-object v4

    .line 146
    :cond_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    array-length v6, v0

    goto :goto_0

    .line 149
    :cond_1
    move v6, v5

    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 150
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 151
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 152
    const/4 v10, 0x1

    if-ne v6, v10, :cond_3

    .line 153
    aget-object v0, v0, v5

    invoke-interface {v9, v0, v5, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 160
    :cond_2
    goto :goto_2

    :cond_3
    if-le v6, v10, :cond_5

    .line 161
    new-array v10, v6, [Ljava/lang/CharSequence;

    iput-object v10, v4, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 162
    new-array v10, v6, [Ljava/lang/CharSequence;

    iput-object v10, v4, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    .line 163
    move v10, v5

    :goto_1
    if-ge v10, v6, :cond_5

    .line 164
    aget-object v11, v0, v10

    .line 165
    invoke-virtual {v3, v11, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 166
    invoke-interface {v9, v11, v5, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 169
    if-eqz v13, :cond_4

    .line 170
    iget-object v14, v4, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v13, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    .line 171
    iget-object v14, v4, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    iget-object v15, v4, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    aget-object v15, v15, v10

    invoke-virtual {v2, v15, v8}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v14, v10

    .line 173
    iget v14, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v14, :cond_4

    .line 174
    iget v14, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v11, v14, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 175
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v13, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11, v8}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 181
    :cond_5
    :goto_2
    iget-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v8}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while building UI detail for uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 182
    :catch_1
    move-exception v0

    .line 183
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while building UI detail for uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_3
    nop

    .line 188
    :goto_4
    iget-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 192
    :cond_6
    return-object v4

    .line 119
    :pswitch_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps_users:I

    goto :goto_5

    .line 121
    :cond_7
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps:I

    .line 119
    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 123
    return-object v4

    .line 125
    :pswitch_1
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    return-object v4

    .line 115
    :cond_8
    sget v0, Lcom/android/settingslib/R$string;->process_kernel_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 117
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUserIdForKey(I)I
    .locals 0

    .line 61
    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method public static isKeyForUser(I)Z
    .locals 1

    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/UidDetail;

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    return-object v1

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;

    move-result-object p2

    .line 93
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    monitor-exit v1

    .line 97
    return-object p2

    .line 95
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 83
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
