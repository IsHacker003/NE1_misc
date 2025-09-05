.class Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;
.super Ljava/lang/Object;
.source "SongFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->customizeActionModeCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 430
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getSelectedNumber()I

    move-result p1

    if-lez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getSelectSongsData()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->updateDB([J)V

    .line 433
    const-string p1, "Ringtone_SongListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "done button selected, mSelectedUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object v1, v1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object v2, v2, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 435
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 437
    :cond_0
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p1, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p1, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 439
    :cond_1
    return-void
.end method
