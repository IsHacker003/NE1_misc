.class Lcom/android/settings/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AppNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/NotificationChannelGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I
    .locals 1

    .line 244
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    const/4 p1, 0x1

    return p1

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    const/4 p1, -0x1

    return p1

    .line 249
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 239
    check-cast p1, Landroid/app/NotificationChannelGroup;

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/AppNotificationSettings$2;->compare(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I

    move-result p1

    return p1
.end method
