.class public Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;
.super Landroid/app/ListFragment;
.source "GenresFragmentActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/GenresFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenresListFragment"
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
.field static final GENRES_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "_id"

    const-string v1, "name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->GENRES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private emptyText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d    # @color/fih_default_primary_icon_color '#999999'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->setHasOptionsMenu(Z)V

    .line 73
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, p1, [I

    const/4 p1, 0x0

    const v0, 0x1020014    # @android:id/text1

    aput v0, v5, p1

    const v2, 0x1090003    # @android:layout/simple_list_item_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v7, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 77
    iget-object v0, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->setListShown(Z)V

    .line 82
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120639    # @string/fih_ringtone_listview_empty 'No music files'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->emptyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 87
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 132
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 135
    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 136
    :goto_0
    if-eqz p2, :cond_2

    .line 137
    const-string p3, "Ringtone_GenresListFragment"

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

    .line 138
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 141
    :cond_2
    goto :goto_1

    .line 142
    :cond_3
    const-string p1, "Ringtone_GenresListFragment"

    const-string p2, "onActivityResult: Cancel to choose more ringtones, so do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
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

    .line 154
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 158
    const-string v4, "name != \'\'"

    .line 159
    const-string p1, "Ringtone_GenresListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "where: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance p1, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->GENRES_PROJECTION:[Ljava/lang/String;

    const-string v6, "name"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 113
    const-string p1, "Ringtone_GenresListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onListItemClick() - Item clicked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 115
    iget-object p1, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 116
    iget-object p2, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    const-string p3, "name"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 118
    iget-object p3, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 119
    iget-object p3, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.PICK"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    sget-object p4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p5, "vnd.android.cursor.dir/showcustomringtonedetail"

    invoke-virtual {p3, p4, p5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string p4, "id"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string p1, "title"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string p1, "tabTitleId"

    const p2, 0x7f120642    # @string/fih_ringtone_tab_genres 'Genres'

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
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

    .line 168
    iget-object p1, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 169
    iput-object p2, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mCursor:Landroid/database/Cursor;

    .line 172
    invoke-virtual {p0}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->setListShown(Z)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->setListShownNoAnimation(Z)V

    .line 177
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 183
    iget-object p1, p0, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 184
    return-void
.end method
