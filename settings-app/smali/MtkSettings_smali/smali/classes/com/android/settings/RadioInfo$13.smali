.class Lcom/android/settings/RadioInfo$13;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1227
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    const-class v1, Lcom/android/settings/BandMode;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1229
    iget-object v0, p0, Lcom/android/settings/RadioInfo$13;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v0, p1}, Lcom/android/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 1230
    const/4 p1, 0x1

    return p1
.end method
