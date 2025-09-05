.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final LOCATION_OPS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 62
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 14

    move-object v0, p0

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 129
    const-wide/32 v2, 0x5265c00

    sub-long v2, p1, v2

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 131
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    const/4 v11, 0x1

    if-nez v9, :cond_0

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v12

    cmp-long v9, v12, v2

    if-ltz v9, :cond_1

    .line 132
    :cond_0
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v7, v12

    .line 133
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 138
    :pswitch_0
    nop

    .line 139
    nop

    .line 144
    move v5, v11

    goto :goto_1

    .line 135
    :pswitch_1
    nop

    .line 136
    nop

    .line 144
    move v4, v11

    :cond_1
    :goto_1
    goto :goto_0

    .line 146
    :cond_2
    const/4 v11, 0x0

    if-nez v5, :cond_4

    if-nez v4, :cond_4

    .line 147
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    return-object v11

    .line 154
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v1

    .line 155
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 157
    nop

    .line 159
    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v10, v2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 161
    if-nez v1, :cond_5

    .line 162
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null application info retrieved for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v11

    .line 167
    :cond_5
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 168
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v1, v12}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 169
    iget-object v4, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 170
    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    nop

    .line 176
    move-object v6, v11

    goto :goto_2

    :cond_6
    move-object v6, v0

    :goto_2
    new-instance v13, Lcom/android/settingslib/location/RecentLocationApps$Request;

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .line 181
    move-object v11, v13

    goto :goto_3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package name not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_3
    return-object v11

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 72
    sget-object v1, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 77
    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 79
    iget-object v6, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 80
    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    .line 82
    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_4

    .line 83
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 86
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    .line 88
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 89
    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_1

    const-string v10, "android"

    .line 90
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    const/4 v9, 0x1

    goto :goto_2

    .line 90
    :cond_1
    nop

    .line 91
    move v9, v1

    :goto_2
    if-nez v9, :cond_3

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 92
    goto :goto_3

    .line 94
    :cond_2
    invoke-direct {p0, v4, v5, v8}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v8

    .line 95
    if-eqz v8, :cond_3

    .line 96
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 99
    :cond_4
    return-object v3
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    return-object v0
.end method
