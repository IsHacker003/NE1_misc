.class public Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImportanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onImportanceChanged()V
    .locals 8

    .line 408
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 410
    invoke-virtual {v2, v0}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 411
    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 414
    nop

    .line 415
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    goto :goto_2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_1

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    goto :goto_4

    .line 424
    :cond_4
    :goto_1
    move v0, v2

    goto :goto_4

    .line 416
    :cond_5
    :goto_2
    nop

    .line 424
    :goto_3
    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    .line 425
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    if-nez v0, :cond_6

    move v7, v1

    goto :goto_6

    :cond_6
    move v7, v2

    :goto_6
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V

    .line 426
    goto :goto_5

    .line 427
    :cond_7
    return-void
.end method
