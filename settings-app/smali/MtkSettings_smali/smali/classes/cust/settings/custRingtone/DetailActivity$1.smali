.class Lcust/settings/custRingtone/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/custRingtone/DetailActivity;->customizeActionModeCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/DetailActivity;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/DetailActivity;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 405
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->getSelectedNumber()I

    move-result p1

    if-lez p1, :cond_0

    .line 407
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {v0}, Lcust/settings/custRingtone/DetailActivity;->getSelectSongsData()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Lcust/settings/custRingtone/DetailActivity;->updateDB([J)Landroid/net/Uri;

    move-result-object p1

    .line 408
    const-string v0, "Ringtone_DetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done button selected, selectedUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcust/settings/custRingtone/DetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 410
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->finish()V

    .line 412
    :cond_0
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p1, p1, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$1;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p1, p1, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 414
    :cond_1
    return-void
.end method
