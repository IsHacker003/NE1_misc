.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    }
.end annotation


# static fields
.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcessStatsDetail$PkgService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

.field private final mServiceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalScale:D

.field private mTotalTime:J

.field private mWeightToRam:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    .line 311
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 324
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 287
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    return-object p0

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkForceStop()V
    .locals 8

    .line 444
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    return-void

    .line 451
    :cond_1
    nop

    .line 452
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_5

    .line 453
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    .line 454
    move v5, v2

    move v2, v1

    :goto_1
    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 455
    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 456
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 458
    return-void

    .line 461
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 462
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    .line 463
    nop

    .line 466
    move v5, v4

    :cond_3
    goto :goto_2

    .line 465
    :catch_0
    move-exception v6

    .line 454
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    .line 469
    :cond_5
    if-eqz v2, :cond_6

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    :cond_6
    return-void
.end method

.method private createDetails()V
    .locals 8

    .line 195
    const v0, 0x7f150018    # @xml/app_memory_settings 'res/xml/app_memory_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 197
    const-string v0, "processes"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillProcessesSection()V

    .line 200
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SummaryPreference;

    .line 203
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 204
    move v1, v2

    goto :goto_0

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v3, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v3, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    :goto_1
    iget-wide v5, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v3, v5

    .line 205
    iget-wide v5, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    div-double v5, v3, v5

    double-to-float v1, v5

    .line 206
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 208
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v5}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 209
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v3, v3

    invoke-static {v1, v3, v4, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 211
    iget-object v2, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 212
    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 215
    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 217
    const-string v1, "frequency"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    .line 219
    const-string v2, "max_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    double-to-long v0, v0

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 429
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 430
    return-void
.end method

.method private fillProcessesSection()V
    .locals 14

    .line 252
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    .line 256
    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string v5, "os"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/settings/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    .line 261
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    sget-object v2, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    move v2, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_2

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    .line 266
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 267
    iget-object v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v5, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 270
    iget-wide v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v8, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 271
    iget-wide v8, v3, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v8, v10

    double-to-long v8, v8

    iget-wide v10, v3, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    iget-wide v12, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v10, v12

    double-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 274
    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 274
    invoke-static {v6, v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 276
    const v7, 0x7f1208e6    # @string/memory_use_running_format '%1$s / %2$s'

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v3, 0x1

    aput-object v6, v4, v3

    .line 277
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 283
    :cond_3
    return-void
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 3

    .line 294
    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 295
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 298
    :cond_0
    iget-object v1, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 300
    return-object p0

    .line 302
    :cond_1
    iget-object p0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 303
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_2

    .line 304
    add-int/lit8 p0, p0, 0x1

    .line 306
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 308
    :cond_3
    return-object v0
.end method

.method private killProcesses()V
    .locals 6

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 435
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    .line 437
    move v4, v1

    :goto_1
    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 438
    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 437
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 435
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method

.method private showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 415
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    const v1, 0x7f120b7a    # @string/runningservicedetails_stop_dlg_title 'Stop system service?'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 417
    const v1, 0x7f120b79    # @string/runningservicedetails_stop_dlg_text 'If you stop this service, some features of your phone may stop working correctly until you power it  ...'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/ProcessStatsDetail$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const p1, 0x7f120579    # @string/dlg_ok 'OK'

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 423
    const p2, 0x7f120573    # @string/dlg_cancel 'Cancel'

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 424
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 425
    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 403
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-void

    .line 410
    :cond_0
    nop

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void

    .line 407
    :catch_0
    move-exception p2

    .line 408
    const-string v0, "ProcessStatsDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    return-void
.end method

.method private updateRunningServices()V
    .locals 6

    .line 160
    nop

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 162
    nop

    .line 163
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 167
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    :goto_1
    if-ge v2, v1, :cond_4

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 174
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v4, :cond_1

    .line 175
    goto :goto_2

    .line 177
    :cond_1
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 178
    goto :goto_2

    .line 180
    :cond_2
    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 181
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    .line 182
    if-eqz v4, :cond_3

    .line 183
    new-instance v5, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/CancellablePreference;->setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    .line 172
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 148
    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 107
    const-string v0, "package_entry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 109
    const-string v0, "weight_to_ram"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    .line 110
    const-string v0, "total_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 111
    const-string v0, "max_memory_usage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    .line 112
    const-string v0, "total_scale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    .line 113
    iget-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mOnePercentTime:J

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    .line 117
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 225
    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f12068e    # @string/force_stop 'Force stop'

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    .line 226
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 236
    const/4 p1, 0x0

    return p1

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    .line 234
    return v0
.end method

.method public onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->finish()V

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 132
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 135
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 136
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    .line 139
    :cond_2
    const/16 v0, -0x2710

    .line 137
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 141
    invoke-virtual {p2, v1, v1}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 144
    return-void
.end method
