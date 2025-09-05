.class Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 705
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 706
    iput-object p3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 707
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 711
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    const-string p1, "ApnSettings"

    const-string v1, "restore APN start~~"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$800(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 715
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$900()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$1000(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 717
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1, v0}, Lcom/android/settings/network/ApnSettings;->access$602(Lcom/android/settings/network/ApnSettings;Z)Z

    .line 721
    :goto_0
    return-void
.end method
