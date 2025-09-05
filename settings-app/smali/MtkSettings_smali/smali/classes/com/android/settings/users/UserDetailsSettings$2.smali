.class Lcom/android/settings/users/UserDetailsSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->access$200(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 117
    :cond_0
    return-void
.end method
