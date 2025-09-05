.class Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "LockScreenNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    .line 330
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 324
    const-string p1, "lock_screen_allow_private_notifications"

    .line 325
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 326
    const-string p1, "lock_screen_show_notifications"

    .line 327
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 331
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 344
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 345
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->access$000(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    .line 347
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->access$100(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_1

    .line 348
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->access$200(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    .line 351
    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    .line 334
    if-eqz p2, :cond_0

    .line 335
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 340
    :goto_0
    return-void
.end method
