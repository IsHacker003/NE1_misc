.class Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;
.super Ljava/lang/Object;
.source "SongFragmentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Lcust/settings/custRingtone/SongFragmentActivity$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 168
    const-string p1, "Ringtone_SongListFragment"

    const-string p2, "MultiSelectOnLongClickListener - onItemLongClick ++"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-boolean p1, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 171
    return p2

    .line 174
    :cond_0
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iput-boolean p2, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    .line 175
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 177
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 178
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1, p4, p5}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSelectedState(J)V

    .line 180
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p3, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p3}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object p4, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p4, p4, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mModeCallBack:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;

    invoke-virtual {p3, p4}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p3

    iput-object p3, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 181
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-static {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$200(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    .line 182
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p3, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object p3, p3, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-static {p1, p3}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$300(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Landroid/view/ActionMode;)V

    .line 183
    const-string p1, "Ringtone_SongListFragment"

    const-string p3, "MultiSelectOnLongClickListener - onItemLongClick --"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return p2
.end method
