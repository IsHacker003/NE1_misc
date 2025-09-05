.class public Lcom/android/settings/dashboard/conditional/RingerMutedCondition;
.super Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;
.source "RingerMutedCondition.java"


# instance fields
.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 36
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08013f    # @drawable/ic_notifications_off_24dp 'res/drawable/ic_notifications_off_24dp.xml'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 53
    const/16 v0, 0x558

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203d9    # @string/condition_device_muted_summary 'Calls and notifications will be muted'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203da    # @string/condition_device_muted_title 'Phone is muted'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public refreshState()V
    .locals 4

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    goto :goto_0

    .line 45
    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 46
    move v0, v2

    goto :goto_1

    .line 45
    :cond_1
    nop

    .line 46
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-nez v3, :cond_2

    .line 48
    move v3, v2

    goto :goto_2

    .line 47
    :cond_2
    nop

    .line 48
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;->setActive(Z)V

    .line 49
    return-void
.end method
