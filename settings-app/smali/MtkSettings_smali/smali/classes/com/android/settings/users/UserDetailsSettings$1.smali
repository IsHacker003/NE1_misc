.class Lcom/android/settings/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 88
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/UserDetailsSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$000(Lcom/android/settings/users/UserDetailsSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$100(Lcom/android/settings/users/UserDetailsSettings;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$100(Lcom/android/settings/users/UserDetailsSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserDetailsSettings;->access$000(Lcom/android/settings/users/UserDetailsSettings;)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$200(Lcom/android/settings/users/UserDetailsSettings;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$300(Lcom/android/settings/users/UserDetailsSettings;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_2
    :goto_0
    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$200(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 106
    :goto_1
    return-void
.end method
