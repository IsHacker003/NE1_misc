.class Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;
.super Ljava/lang/Object;
.source "DefaultSmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultKeyUpdater"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 94
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDefaultApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-static {p2, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 103
    return-void
.end method
