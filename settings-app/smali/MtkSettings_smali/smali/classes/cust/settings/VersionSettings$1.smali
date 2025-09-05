.class Lcust/settings/VersionSettings$1;
.super Ljava/lang/Object;
.source "VersionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/VersionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/VersionSettings;


# direct methods
.method constructor <init>(Lcust/settings/VersionSettings;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcust/settings/VersionSettings$1;->this$0:Lcust/settings/VersionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 94
    iget-object p1, p0, Lcust/settings/VersionSettings$1;->this$0:Lcust/settings/VersionSettings;

    invoke-virtual {p1}, Lcust/settings/VersionSettings;->finish()V

    .line 95
    return-void
.end method
