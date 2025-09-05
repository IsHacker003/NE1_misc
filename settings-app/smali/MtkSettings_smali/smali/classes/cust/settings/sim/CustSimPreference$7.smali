.class Lcust/settings/sim/CustSimPreference$7;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 502
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 503
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$1200(Lcust/settings/sim/CustSimPreference;)Landroid/app/AlertDialog;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcust/settings/sim/CustSimPreference;->access$1300(Lcust/settings/sim/CustSimPreference;Landroid/app/Dialog;Z)V

    .line 504
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$1400(Lcust/settings/sim/CustSimPreference;)V

    goto :goto_0

    .line 505
    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 506
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimPreference;->update()V

    goto :goto_0

    .line 507
    :cond_1
    const/4 p1, -0x3

    if-ne p2, p1, :cond_2

    .line 508
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$7;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimPreference;->update()V

    .line 510
    :cond_2
    :goto_0
    return-void
.end method
