.class public Lcom/android/settings/notification/ZenModeBackend;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


# static fields
.field protected static final ZEN_MODE_FROM_ANYONE:Ljava/lang/String; = "zen_mode_from_anyone"

.field protected static final ZEN_MODE_FROM_CONTACTS:Ljava/lang/String; = "zen_mode_from_contacts"

.field protected static final ZEN_MODE_FROM_NONE:Ljava/lang/String; = "zen_mode_from_none"

.field protected static final ZEN_MODE_FROM_STARRED:Ljava/lang/String; = "zen_mode_from_starred"

.field private static sInstance:Lcom/android/settings/notification/ZenModeBackend;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mPolicy:Landroid/app/NotificationManager$Policy;

.field protected mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "ZenModeSettingsBackend"

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenMode()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 68
    return-void
.end method

.method private clearDeprecatedEffects(I)I
    .locals 0

    .line 172
    and-int/lit8 p1, p1, -0x4

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settings/notification/ZenModeBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    .line 59
    :cond_0
    sget-object p0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    return-object p0
.end method

.method protected static getKeyFromSetting(I)Ljava/lang/String;
    .locals 0

    .line 233
    packed-switch p0, :pswitch_data_0

    .line 242
    const-string p0, "zen_mode_from_none"

    return-object p0

    .line 239
    :pswitch_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    .line 237
    :pswitch_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    .line 235
    :pswitch_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 162
    if-eqz p1, :cond_0

    .line 163
    or-int p1, v0, p2

    goto :goto_0

    .line 165
    :cond_0
    not-int p1, p2

    and-int/2addr p1, v0

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->clearDeprecatedEffects(I)I

    move-result p1

    return p1
.end method

.method private getPrioritySenders(I)I
    .locals 1

    .line 219
    nop

    .line 221
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result p1

    return p1

    .line 225
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p1

    return p1

    .line 229
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 6

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x387093d3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v1, :cond_3

    const v1, -0x19386538

    if-eq v0, v1, :cond_2

    const v1, 0xb2d30af

    if-eq v0, v1, :cond_1

    const v1, 0x1b955bea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_1

    :cond_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_1

    :cond_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v5

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 288
    return v5

    .line 285
    :pswitch_0
    return v4

    .line 283
    :pswitch_1
    return v2

    .line 281
    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-object p1

    .line 301
    :catch_0
    move-exception p1

    .line 302
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getContactsSummary(I)I
    .locals 3

    .line 247
    nop

    .line 251
    const v0, 0x7f121191    # @string/zen_mode_from_none 'None'

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 252
    return v0

    .line 255
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    goto :goto_0

    .line 259
    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v1

    .line 265
    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 274
    return v0

    .line 271
    :pswitch_0
    const p1, 0x7f121192    # @string/zen_mode_from_starred 'From starred contacts only'

    return p1

    .line 269
    :pswitch_1
    const p1, 0x7f121190    # @string/zen_mode_from_contacts 'From contacts only'

    return p1

    .line 267
    :pswitch_2
    const p1, 0x7f12118f    # @string/zen_mode_from_anyone 'From anyone'

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNewPriorityCategories(ZI)I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 114
    if-eqz p1, :cond_0

    .line 115
    or-int p1, v0, p2

    goto :goto_0

    .line 117
    :cond_0
    not-int p1, p2

    and-int/2addr p1, v0

    .line 119
    :goto_0
    return p1
.end method

.method protected getPriorityCallSenders()I
    .locals 1

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0

    .line 127
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getPriorityMessageSenders()I
    .locals 1

    .line 131
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0

    .line 134
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getZenMode()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 101
    iget v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return v0
.end method

.method protected isPriorityCategoryEnabled(I)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isVisualEffectSuppressed(I)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeZenRule(Ljava/lang/String;)Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected savePolicy(IIII)V
    .locals 1

    .line 154
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 156
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 157
    return-void
.end method

.method protected saveSenders(II)V
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    .line 182
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->getPrioritySenders(I)I

    move-result v2

    .line 184
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 185
    :goto_0
    if-ne p2, v3, :cond_1

    .line 187
    move p2, v2

    :cond_1
    const-string v2, ""

    .line 188
    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    .line 189
    const-string v2, "Calls"

    .line 190
    nop

    .line 193
    move v0, p2

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 194
    const-string v2, "Messages"

    .line 195
    nop

    .line 198
    move v1, p2

    :cond_3
    invoke-virtual {p0, v4, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewPriorityCategories(ZI)I

    move-result p1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 201
    sget-boolean p1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefChange allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "From="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    return-void
.end method

.method protected saveSoundPolicy(IZ)V
    .locals 2

    .line 147
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewPriorityCategories(ZI)I

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 150
    return-void
.end method

.method protected saveVisualEffectsPolicy(IZ)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewSuppressedEffects(ZI)I

    move-result p1

    .line 142
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 144
    return-void
.end method

.method protected setZenMode(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 88
    return-void
.end method

.method protected setZenModeForDuration(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 91
    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 96
    return-void
.end method

.method protected setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p1

    return p1
.end method

.method protected updatePolicy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 74
    :cond_0
    return-void
.end method

.method protected updateZenMode()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 79
    return-void
.end method
