.class public abstract Lcom/android/settings/notification/NotificationSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected mArgs:Landroid/os/Bundle;

.field protected mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected mContext:Landroid/content/Context;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field protected mDynamicPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

.field protected mIntent:Landroid/content/Intent;

.field protected mListeningToPackageRemove:Z

.field protected mNm:Landroid/app/NotificationManager;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mShowLegacyChannelConfig:Z

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-string v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mDynamicPreferences:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 378
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$2;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$-zFOM6q-03lCRFkOVmbrRVoBxkk;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$-zFOM6q-03lCRFkOVmbrRVoBxkk;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->updatePreferenceStates()V

    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 7

    .line 250
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 254
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 255
    array-length v1, p2

    .line 256
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 257
    aget-object v3, p2, v2

    .line 258
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 261
    :catch_0
    move-exception v3

    .line 262
    const-string v4, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_2
    return-object v0

    .line 251
    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    .line 394
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const/4 p0, 0x1

    return p0

    .line 399
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    const/4 p0, -0x1

    return p0

    .line 403
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private loadAppRow()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 189
    return-void
.end method

.method private loadChannel()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 181
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :goto_1
    move-object v2, v1

    goto :goto_2

    .line 182
    :cond_1
    goto :goto_1

    .line 184
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 185
    return-void
.end method

.method private loadChannelGroup()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    const-string v0, "miscellaneous"

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 194
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v3, "miscellaneous"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 206
    :cond_3
    return-void
.end method


# virtual methods
.method protected collectConfigActivities()V
    .locals 6

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 221
    sget-boolean v2, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preference activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " ;_;"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 226
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 228
    sget-boolean v3, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 229
    const-string v3, "NotifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v4, 0x0

    .line 237
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 238
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.CHANNEL_ID"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_5

    .line 243
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.CHANNEL_GROUP_ID"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 244
    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :cond_5
    goto :goto_1

    .line 247
    :cond_6
    return-void
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 3

    .line 320
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 322
    return v2

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 325
    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    return v0

    .line 328
    :cond_3
    return v0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 1

    .line 313
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 316
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z
    .locals 1

    .line 332
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez v0, :cond_0

    .line 334
    const/4 p1, 0x1

    return p1

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    return p1

    .line 339
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 96
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mNm:Landroid/app/NotificationManager;

    .line 98
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    const-string v0, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    const-string v0, "app_uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 105
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-gez p1, :cond_2

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 108
    :catch_0
    move-exception p1

    .line 112
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 114
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 115
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 118
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannel()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadAppRow()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannelGroup()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->collectConfigActivities()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mIntent:Landroid/content/Intent;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mArgs:Landroid/os/Bundle;

    if-nez p1, :cond_0

    .line 135
    const-string p1, "NotifiSettingsBase"

    const-string v0, "No intent"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 137
    return-void

    .line 140
    :cond_0
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->startListeningToPackageRemove()V

    .line 147
    return-void

    .line 141
    :cond_2
    :goto_0
    const-string p1, "NotifiSettingsBase"

    const-string v0, "Missing package or uid or packageinfo"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->stopListeningToPackageRemove()V

    .line 152
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 376
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 158
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadAppRow()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    .line 168
    const-string v0, "NotifiSettingsBase"

    const-string v1, "Can\'t load package"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 170
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannel()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->loadChannelGroup()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->collectConfigActivities()V

    .line 175
    return-void

    .line 159
    :cond_2
    :goto_0
    const-string v0, "NotifiSettingsBase"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 161
    return-void
.end method

.method protected populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;
    .locals 4

    .line 272
    new-instance v0, Lcom/android/settings/widget/MasterCheckBoxPreference;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 274
    move p3, v3

    goto :goto_0

    .line 276
    :cond_0
    nop

    .line 274
    move p3, v2

    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    .line 278
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setChecked(Z)V

    .line 281
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 282
    const-string v1, "uid"

    iget v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "fromSettings"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 288
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const v1, 0x7f12099c    # @string/notification_channel_title 'Notification category'

    .line 289
    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 291
    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    .line 286
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setIntent(Landroid/content/Intent;)V

    .line 293
    new-instance p3, Lcom/android/settings/notification/NotificationSettingsBase$1;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 309
    return-object v0
.end method

.method protected setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V
    .locals 1

    .line 347
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    if-ne v0, p3, :cond_1

    return-void

    .line 349
    :cond_1
    if-eqz p3, :cond_2

    .line 350
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 354
    :goto_1
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .line 357
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 362
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f120131    # @string/app_not_found_dlg_text 'The app wasn’t found in the list of installed apps.'

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    return-void
.end method
