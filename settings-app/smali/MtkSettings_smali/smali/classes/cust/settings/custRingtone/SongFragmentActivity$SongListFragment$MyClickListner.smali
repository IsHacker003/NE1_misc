.class Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;
.super Ljava/lang/Object;
.source "SongFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 402
    const v0, 0x7f0a02eb    # @id/select_all

    if-ne p1, v0, :cond_0

    .line 403
    const-string p1, "Ringtone_SongListFragment"

    const-string v0, "select_all clicked "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$400(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Z)V

    goto :goto_0

    .line 406
    :cond_0
    const v0, 0x7f0a010a    # @id/deselect_all

    if-ne p1, v0, :cond_1

    .line 408
    const-string p1, "Ringtone_SongListFragment"

    const-string v0, "deselect_all clicked "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p1, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 416
    :cond_1
    :goto_0
    return-void
.end method
