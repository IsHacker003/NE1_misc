.class public Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;
.super Landroid/app/ListFragment;
.source "FolderFragmentActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/FolderFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderListFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final FOLDER_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCursor:Landroid/database/Cursor;

.field private mFolderName:Ljava/lang/String;

.field private mFolderPath:Ljava/lang/String;

.field private mSongCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "is_music"

    const-string v3, "bucket_id"

    const-string v4, "bucket_display_name"

    const-string v5, "COUNT(*) AS count"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->FOLDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mCursor:Landroid/database/Cursor;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mSongCount:I

    .line 59
    iput-object v0, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mFolderPath:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method private emptyText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d    # @color/fih_default_primary_icon_color '#999999'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->setHasOptionsMenu(Z)V

    .line 76
    new-instance p1, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "bucket_display_name"

    const-string v2, "_data"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v2, 0x7f0d01f2    # @layout/zzz_sound_cust_ringtone_simple_list_item_2 'res/layout/zzz_sound_cust_ringtone_simple_list_item_2.xml'

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 81
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;-><init>(Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;Lcust/settings/custRingtone/FolderFragmentActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 82
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->setListShown(Z)V

    .line 87
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120639    # @string/fih_ringtone_listview_empty 'No music files'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->emptyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 92
    return-void

    :array_0
    .array-data 4
        0x7f0a0383    # @id/text1
        0x7f0a0384    # @id/text2
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 133
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 136
    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 137
    :goto_0
    if-eqz p2, :cond_2

    .line 138
    const-string p3, "Ringtone_FolderListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: RESULT_OK, so set to be ringtone! selectedUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 142
    :cond_2
    goto :goto_1

    .line 143
    :cond_3
    const-string p1, "Ringtone_FolderListFragment"

    const-string p2, "onActivityResult: Cancel to choose more ringtones, so do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 155
    const-string p1, "external"

    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 159
    const-string v4, "is_music=1) GROUP BY (bucket_id"

    .line 160
    const-string p1, "Ringtone_FolderListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selection: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance p1, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 118
    const-string p1, "Ringtone_FolderListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FolderListFragment, Item clicked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mCursor:Landroid/database/Cursor;

    iget-object p2, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mCursor:Landroid/database/Cursor;

    const-string p3, "_data"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 122
    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mFolderPath:Ljava/lang/String;

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p4, "vnd.android.cursor.dir/showcustomringtonedetail"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string p2, "title"

    iget-object p4, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string p2, "tabTitleId"

    const p4, 0x7f120641    # @string/fih_ringtone_tab_folder 'Folder'

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1, p3}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 169
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 170
    iput-object p2, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mCursor:Landroid/database/Cursor;

    .line 173
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->setListShown(Z)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->setListShownNoAnimation(Z)V

    .line 178
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 185
    return-void
.end method
