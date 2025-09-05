.class public Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget-object v1, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    aget v4, v1, v3

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 254
    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f12114e    # @string/zen_mode_alarms 'Alarms'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 256
    :cond_0
    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    .line 257
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121193    # @string/zen_mode_media 'Media'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 259
    :cond_1
    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 260
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211d5    # @string/zen_mode_system 'Touch sounds'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 262
    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 263
    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121150    # @string/zen_mode_all_messages 'Messages'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211c1    # @string/zen_mode_selected_messages 'Some messages'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 270
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 271
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f12118d    # @string/zen_mode_events 'Events'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_5
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 273
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f12119c    # @string/zen_mode_reminders 'Reminders'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_6
    const/16 v6, 0x8

    const v7, 0x7f12114f    # @string/zen_mode_all_callers 'anyone'

    if-ne v4, v6, :cond_9

    .line 275
    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v4, :cond_7

    .line 276
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_7
    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v4, v5, :cond_8

    .line 279
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121178    # @string/zen_mode_contacts_callers 'contacts'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_8
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211ce    # @string/zen_mode_starred_callers 'starred contacts'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_9
    const/16 v5, 0x10

    if-ne v4, v5, :cond_a

    .line 286
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 288
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f12119e    # @string/zen_mode_repeat_callers 'Repeat callers'

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 294
    :cond_b
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 298
    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 142
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 141
    :goto_1
    return p0
.end method

.method static synthetic lambda$getMsgEventReminderSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v2, v0, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    .line 160
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 158
    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v1, v0, :cond_1

    const/16 v0, 0x40

    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x80

    .line 118
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 116
    :goto_1
    return p0
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 6

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    .line 228
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f1211c7    # @string/zen_mode_settings_summary_off 'Never'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100044    # @plurals/zen_mode_settings_summary_on

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 229
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 1

    .line 214
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    .line 215
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1211ac    # @string/zen_mode_restrict_notifications_summary_muted 'No sound from notifications'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1211ab    # @string/zen_mode_restrict_notifications_summary_hidden 'No visuals or sound from notifications'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1211aa    # @string/zen_mode_restrict_notifications_summary_custom 'Partially hidden'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 6

    .line 140
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f121196    # @string/zen_mode_no_exceptions 'None'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121174    # @string/zen_mode_calls_summary_one 'From %1$s'

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 147
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121175    # @string/zen_mode_calls_summary_two 'From %1$s and %2$s'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 152
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 150
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 3

    .line 235
    nop

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 237
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 241
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 244
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    return v1
.end method

.method getMsgEventReminderSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 6

    .line 157
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f121196    # @string/zen_mode_no_exceptions 'None'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 166
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v4, 0x7f120770    # @string/join_two_items '%1$s and %2$s'

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v1

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 167
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f12119a    # @string/zen_mode_other_options 'other options'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getSoundSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 7

    .line 115
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f1211f0    # @string/zen_sound_all_muted 'Muted'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f1211f4    # @string/zen_sound_one_allowed 'Muted, but allow %1$s'

    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 123
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v4, 0x7f1211f7    # @string/zen_sound_two_allowed 'Muted, but allow %1$s and %2$s'

    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 128
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 126
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f1211f5    # @string/zen_sound_three_allowed 'Muted, but allow %1$s, %2$s, and %3$s'

    new-array v4, v4, [Ljava/lang/Object;

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 132
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 133
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 130
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f1211f3    # @string/zen_sound_none_muted 'Not muted'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 9

    .line 188
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f1211cc    # @string/zen_mode_sound_summary_on 'On'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v4, 0x7f1211cd    # @string/zen_mode_sound_summary_on_with_info 'On / %1$s'

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    .line 202
    if-lez v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v4, 0x7f1211cb    # @string/zen_mode_sound_summary_off_with_info 'Off / %1$s'

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100045    # @plurals/zen_mode_sound_summary_summary_off_info

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    .line 204
    invoke-virtual {v6, v7, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 203
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f1211ca    # @string/zen_mode_sound_summary_off 'Off'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
