.class public Lcom/android/settings/notification/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;,
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$1;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/settings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$2;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 143
    new-instance v0, Lcom/android/settings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$3;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->scheduleRefreshList()V

    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 232
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 235
    return-object v0
.end method

.method private static formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 255
    const-string v1, "Intent(pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result p0

    .line 259
    if-eqz p0, :cond_0

    const-string p0, " (activity)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    goto :goto_0

    :catch_0
    move-exception p0

    .line 261
    :goto_0
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;
    .locals 8

    .line 317
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 319
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 320
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 321
    const v3, 0x7f1209bc    # @string/notification_log_details_delimiter ': '

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    const v4, 0x7f1209c6    # @string/notification_log_details_package 'pkg'

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 323
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 324
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 325
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 326
    const v5, 0x7f1209c4    # @string/notification_log_details_key 'key'

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 328
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 329
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 330
    const v5, 0x7f1209c2    # @string/notification_log_details_icon 'icon'

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 331
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 332
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 333
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "channelId"

    .line 334
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 335
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 336
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 337
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "postTime"

    .line 338
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 340
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 341
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 342
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "timeoutAfter"

    .line 343
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 344
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 345
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209c0    # @string/notification_log_details_group 'group'

    .line 349
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 350
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 351
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 352
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    const v4, 0x7f1209c1    # @string/notification_log_details_group_summary '(summary)'

    .line 354
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    :cond_1
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209cd    # @string/notification_log_details_sound 'sound'

    .line 358
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 359
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 360
    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    const v5, 0x7f1209c5    # @string/notification_log_details_none 'none'

    const v6, 0x7f1209ba    # @string/notification_log_details_default 'default'

    if-eqz v4, :cond_2

    .line 361
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 362
    :cond_2
    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 363
    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    :goto_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v7, 0x7f1209cf    # @string/notification_log_details_vibrate 'vibrate'

    .line 368
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 369
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 372
    :cond_4
    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_6

    .line 373
    move v4, v7

    :goto_1
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 374
    if-lez v4, :cond_5

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 375
    :cond_5
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 380
    :cond_7
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209d0    # @string/notification_log_details_visibility 'visibility'

    .line 381
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->visibility:I

    .line 383
    invoke-static {v5}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    iget-object v4, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_8

    .line 385
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209c9    # @string/notification_log_details_public_version 'publicVersion'

    .line 386
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 388
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 389
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    :cond_8
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f1209c8    # @string/notification_log_details_priority 'priority'

    .line 392
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 393
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->priority:I

    .line 394
    invoke-static {v5}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    iget-boolean p2, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz p2, :cond_c

    .line 397
    iget-object p2, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 398
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209c3    # @string/notification_log_details_importance 'importance'

    .line 399
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 402
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p2

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 403
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 404
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209bd    # @string/notification_log_details_explanation 'explanation'

    .line 405
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 407
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 408
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 410
    :cond_9
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209b7    # @string/notification_log_details_badge 'can show badge'

    .line 411
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 413
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 414
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 416
    :cond_a
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez p1, :cond_b

    .line 417
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209cb    # @string/notification_log_details_ranking_null 'Ranking object is missing.'

    .line 418
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 421
    :cond_b
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209ca    # @string/notification_log_details_ranking_none 'Ranking object doesn't contain this key.'

    .line 422
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 427
    :cond_c
    :goto_3
    iget-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const p2, 0x7f1209b8    # @string/notification_log_details_content_intent 'intent'

    if-eqz p1, :cond_d

    .line 428
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 429
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 431
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 432
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 434
    :cond_d
    iget-object p1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_e

    .line 435
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v0, 0x7f1209bb    # @string/notification_log_details_delete_intent 'delete intent'

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 438
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 439
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    :cond_e
    iget-object p1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_f

    .line 442
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v0, 0x7f1209bf    # @string/notification_log_details_full_screen_intent 'full screen intent'

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 446
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    :cond_f
    iget-object p1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/16 v0, 0x20

    if-eqz p1, :cond_12

    iget-object p1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length p1, p1

    if-lez p1, :cond_12

    .line 449
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v4, 0x7f1209b5    # @string/notification_log_details_actions 'actions'

    .line 450
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    move p1, v7

    :goto_4
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v4

    if-ge p1, v4, :cond_12

    .line 452
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v4, v4, p1

    .line 453
    const-string v5, "\n  "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v6, 0x7f1209ce    # @string/notification_log_details_title 'title'

    .line 454
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 456
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 457
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    iget-object v5, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_10

    .line 459
    const-string v5, "\n    "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 460
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 462
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 463
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 465
    :cond_10
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 466
    const-string v5, "\n    "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v6, 0x7f1209cc    # @string/notification_log_details_remoteinput 'remote inputs'

    .line 467
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 469
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 470
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_4

    .line 474
    :cond_12
    iget-object p1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_13

    .line 475
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209b9    # @string/notification_log_details_content_view 'custom view'

    .line 476
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 479
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 483
    :cond_13
    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_15

    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-lez p1, :cond_15

    .line 484
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f1209be    # @string/notification_log_details_extras 'extras'

    .line 485
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 487
    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 488
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    :cond_14
    const-string v5, "\n  "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 491
    goto :goto_5

    .line 495
    :cond_15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 496
    invoke-virtual {v1, p1, v7}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 497
    const-string p2, "\n"

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const v1, 0x7f1209c7    # @string/notification_log_details_parcel 'parcel size'

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 499
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 501
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const v0, 0x7f1209b6    # @string/notification_log_details_ashmem 'ashmem'

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 503
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "\n"

    .line 505
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 507
    return-object v2
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 3

    .line 511
    nop

    .line 513
    if-eqz p1, :cond_1

    .line 515
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 516
    const/4 p2, 0x0

    .line 518
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 519
    :catch_0
    move-exception p2

    .line 520
    sget-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    const/4 p1, 0x0

    return-object p1

    .line 524
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 526
    :goto_0
    return-object p2
.end method

.method private static getTitleString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 239
    nop

    .line 240
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 249
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    .line 554
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 555
    return-object v0

    .line 559
    :cond_0
    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 560
    :catch_0
    move-exception p2

    .line 561
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "<system>"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    return-object v0
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 268
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-interface {v3, v4}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 270
    iget-object v4, v0, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v5, v0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    .line 270
    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    array-length v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    const/4 v6, 0x2

    new-array v7, v6, [[Landroid/service/notification/StatusBarNotification;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    array-length v4, v7

    move v10, v8

    :goto_0
    if-ge v10, v4, :cond_6

    aget-object v11, v7, v10

    .line 278
    array-length v12, v11

    move v13, v8

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v14, v11, v13

    .line 279
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v15

    const/4 v6, -0x1

    if-eq v15, v6, :cond_0

    move v6, v9

    goto :goto_2

    :cond_0
    move v6, v8

    :goto_2
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v15

    if-eq v15, v1, :cond_1

    move v15, v9

    goto :goto_3

    :cond_1
    move v15, v8

    :goto_3
    and-int/2addr v6, v15

    if-eqz v6, :cond_2

    .line 280
    nop

    .line 278
    move v14, v9

    const/16 v16, 0x2

    move v9, v8

    goto/16 :goto_5

    .line 283
    :cond_2
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 284
    new-instance v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v15, v2}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/notification/NotificationStation$1;)V

    .line 285
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 286
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    iput v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 287
    iget-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v9, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    iget v8, v6, Landroid/app/Notification;->icon:I

    invoke-direct {v0, v2, v9, v8}, Lcom/android/settings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v8, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    invoke-direct {v0, v2, v8}, Lcom/android/settings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/settings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 290
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 291
    iget-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const v2, 0x7f1209d1    # @string/notification_log_no_title '(none)'

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 294
    :cond_3
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v8

    iput-wide v8, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 295
    iget v2, v6, Landroid/app/Notification;->priority:I

    iput v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 296
    invoke-virtual {v6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->channel:Ljava/lang/String;

    .line 297
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    .line 299
    if-ne v11, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 301
    invoke-direct {v0, v14, v15}, Lcom/android/settings/notification/NotificationStation;->generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    .line 303
    const-string v2, "   [%d] %s: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    iget-object v8, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v8, v6, v14

    iget-object v8, v15, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    const/16 v16, 0x2

    aput-object v8, v6, v16

    invoke-static {v2, v6}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v8, v9

    move v9, v14

    move/from16 v6, v16

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 277
    :cond_5
    move/from16 v16, v6

    move v14, v9

    move v9, v8

    add-int/lit8 v10, v10, 0x1

    move v9, v14

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 308
    :cond_6
    return-object v5

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load Notifications: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 530
    nop

    .line 532
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception p1

    .line 534
    sget-object p2, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get application icon"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 547
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    :goto_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 227
    sget-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private refreshList()V
    .locals 7

    .line 209
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    const-string v2, "adding %d infos"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationStation;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 218
    :goto_0
    if-ge v5, v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v3, v4, v6}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V

    .line 219
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private scheduleRefreshList()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 183
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 188
    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    .line 192
    invoke-static {p1, v2}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 193
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .line 154
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 158
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 159
    const-string p1, "notification"

    .line 160
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 165
    const-string v0, "onDetach()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 169
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 197
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    .line 206
    return-void
.end method
