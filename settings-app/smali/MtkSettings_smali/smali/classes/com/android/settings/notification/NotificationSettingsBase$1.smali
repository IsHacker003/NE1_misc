.class Lcom/android/settings/notification/NotificationSettingsBase$1;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;

.field final synthetic val$channel:Landroid/app/NotificationChannel;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 298
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 299
    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 300
    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 301
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 303
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 305
    const/4 p1, 0x1

    return p1
.end method
