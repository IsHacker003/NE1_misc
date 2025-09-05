.class public Lcom/android/settings/applications/appops/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final RECENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [Z

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 114
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    new-array v1, v1, [Z

    fill-array-data v1, :array_3

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 133
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    new-array v1, v1, [Z

    fill-array-data v1, :array_5

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 154
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 186
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    new-array v1, v1, [Z

    fill-array-data v1, :array_9

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 209
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    aput v4, v2, v3

    new-array v4, v1, [Z

    aput-boolean v3, v4, v3

    invoke-direct {v0, v2, v4}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 437
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    .line 460
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x40
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b    # @array/app_ops_summaries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000a    # @array/app_ops_labels

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .line 471
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_2

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    .line 473
    invoke-virtual {p5}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v1

    if-ne v1, p3, :cond_2

    .line 474
    invoke-virtual {p5}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 475
    move v1, v0

    goto :goto_0

    .line 474
    :cond_0
    nop

    .line 475
    move v1, v2

    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    move v0, v2

    :goto_1
    if-ne v1, v0, :cond_2

    .line 479
    invoke-virtual {p5, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 480
    return-void

    .line 484
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object p5

    .line 485
    if-eqz p5, :cond_3

    .line 486
    invoke-virtual {p5, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 487
    return-void

    .line 489
    :cond_3
    new-instance p5, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-direct {p5, p2, p4, p3, p6}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V

    .line 492
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;"
        }
    .end annotation

    .line 505
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    .line 506
    if-nez v0, :cond_1

    .line 507
    if-nez p4, :cond_0

    .line 509
    :try_start_0
    iget-object p4, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p4, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_0

    .line 512
    :catch_0
    move-exception p1

    .line 513
    const-string p1, "AppOpsState"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find info for package "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 p1, 0x0

    return-object p1

    .line 517
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 518
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 519
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_1
    return-object v0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    .line 530
    iget-object v10, v8, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    .line 532
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 533
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 536
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 537
    const/16 v1, 0x4e

    new-array v15, v1, [I

    .line 538
    const/4 v7, 0x0

    move v1, v7

    :goto_0
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 539
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v1

    aput v1, v15, v2

    .line 538
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    if-eqz v9, :cond_2

    .line 551
    iget-object v1, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v2, p2

    invoke-virtual {v1, v2, v9, v0}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 553
    :cond_2
    iget-object v1, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v1, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 556
    :goto_1
    const/4 v6, 0x0

    const/16 v16, 0x1

    if-eqz v0, :cond_7

    .line 557
    move v5, v7

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 558
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 559
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v10, v11, v1, v6}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v17

    .line 560
    if-nez v17, :cond_4

    .line 561
    nop

    .line 557
    :cond_3
    move/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v12

    move v12, v7

    goto :goto_6

    .line 563
    :cond_4
    move v3, v7

    :goto_3
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 564
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    .line 565
    if-nez v9, :cond_5

    .line 566
    move/from16 v18, v16

    goto :goto_4

    .line 565
    :cond_5
    nop

    .line 566
    move/from16 v18, v7

    :goto_4
    if-nez v9, :cond_6

    .line 565
    move/from16 v19, v7

    goto :goto_5

    .line 566
    :cond_6
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    aget v1, v15, v1

    .line 565
    move/from16 v19, v1

    :goto_5
    move-object v1, v8

    move-object/from16 v20, v2

    move-object v2, v12

    move/from16 v21, v3

    move-object v3, v4

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    move/from16 v23, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    move/from16 v6, v18

    move-object/from16 v24, v12

    move v12, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 563
    add-int/lit8 v3, v21, 0x1

    move v7, v12

    move-object/from16 v6, v20

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v12, v24

    goto :goto_3

    .line 557
    :goto_6
    add-int/lit8 v5, v23, 0x1

    move v7, v12

    move-object/from16 v6, v20

    move-object/from16 v12, v24

    goto :goto_2

    .line 572
    :cond_7
    move-object/from16 v20, v6

    move-object/from16 v24, v12

    move v12, v7

    if-eqz v9, :cond_8

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    :try_start_0
    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 576
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 577
    :catch_0
    move-exception v0

    .line 578
    :goto_7
    goto :goto_8

    .line 580
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 581
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 582
    iget-object v1, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v12}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 584
    :goto_8
    move-object v0, v1

    move v7, v12

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_12

    .line 585
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 586
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v10, v11, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v5

    .line 588
    if-nez v5, :cond_a

    .line 589
    nop

    .line 584
    :cond_9
    move-object/from16 v25, v0

    move/from16 v17, v7

    goto/16 :goto_12

    .line 591
    :cond_a
    nop

    .line 592
    nop

    .line 593
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 594
    move v4, v12

    move-object/from16 v1, v20

    move-object v2, v1

    :goto_a
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v4, v3, :cond_9

    .line 595
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_c

    .line 596
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_c

    .line 600
    nop

    .line 594
    :cond_b
    move-object/from16 v25, v0

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v6

    move/from16 v17, v7

    goto/16 :goto_11

    .line 605
    :cond_c
    move v3, v12

    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_b

    .line 606
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 607
    goto :goto_c

    .line 611
    :cond_d
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 612
    nop

    .line 605
    :goto_c
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v6

    move/from16 v17, v7

    goto/16 :goto_10

    .line 614
    :cond_e
    if-nez v1, :cond_f

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v2, v12, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 620
    move-object v12, v0

    move-object v0, v1

    goto :goto_d

    :cond_f
    move-object v0, v1

    move-object v12, v2

    :goto_d
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    .line 621
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v35}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    .line 622
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    if-nez v9, :cond_10

    .line 624
    move/from16 v17, v16

    goto :goto_e

    .line 623
    :cond_10
    nop

    .line 624
    const/16 v17, 0x0

    :goto_e
    if-nez v9, :cond_11

    .line 623
    const/16 v18, 0x0

    goto :goto_f

    .line 624
    :cond_11
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    aget v1, v15, v1

    .line 623
    move/from16 v18, v1

    :goto_f
    move-object v1, v8

    move-object/from16 v19, v2

    move-object/from16 v2, v24

    move/from16 v21, v3

    move-object v3, v12

    move/from16 v22, v4

    move-object v4, v5

    move-object/from16 v23, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 605
    move-object v1, v0

    move-object v2, v12

    :goto_10
    add-int/lit8 v3, v21, 0x1

    move/from16 v7, v17

    move-object/from16 v6, v19

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v0, v25

    const/4 v12, 0x0

    goto/16 :goto_b

    .line 594
    :goto_11
    add-int/lit8 v4, v22, 0x1

    move/from16 v7, v17

    move-object/from16 v6, v19

    move-object/from16 v5, v23

    move-object/from16 v0, v25

    const/4 v12, 0x0

    goto/16 :goto_a

    .line 584
    :goto_12
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, v25

    const/4 v12, 0x0

    goto/16 :goto_9

    .line 631
    :cond_12
    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    return-object v2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method
