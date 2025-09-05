.class Lcust/settings/custRingtone/DetailActivity$MyClickListner;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/DetailActivity;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/DetailActivity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 381
    const v0, 0x7f0a02eb    # @id/select_all

    if-ne p1, v0, :cond_0

    .line 383
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;->this$0:Lcust/settings/custRingtone/DetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcust/settings/custRingtone/DetailActivity;->access$400(Lcust/settings/custRingtone/DetailActivity;Z)V

    goto :goto_0

    .line 385
    :cond_0
    const v0, 0x7f0a010a    # @id/deselect_all

    if-ne p1, v0, :cond_1

    .line 388
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;->this$0:Lcust/settings/custRingtone/DetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcust/settings/custRingtone/DetailActivity;->access$400(Lcust/settings/custRingtone/DetailActivity;Z)V

    .line 390
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p1, p1, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 392
    :cond_1
    :goto_0
    return-void
.end method
