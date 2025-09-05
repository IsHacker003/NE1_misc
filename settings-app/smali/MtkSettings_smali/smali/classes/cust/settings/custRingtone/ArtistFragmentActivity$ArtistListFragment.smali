.class public Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;
.super Landroid/app/ListFragment;
.source "ArtistFragmentActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/ArtistFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistListFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;
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
.field static final ARTIST_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const-string v0, "_id"

    const-string v1, "artist"

    const-string v2, "number_of_albums"

    const-string v3, "number_of_tracks"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->ARTIST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private emptyText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d    # @color/fih_default_primary_icon_color '#999999'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->setHasOptionsMenu(Z)V

    .line 70
    new-instance p1, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "artist"

    const-string v2, "number_of_tracks"

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

    iput-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 74
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;-><init>(Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;Lcust/settings/custRingtone/ArtistFragmentActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 75
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->setListShown(Z)V

    .line 80
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120639    # @string/fih_ringtone_listview_empty 'No music files'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->emptyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    return-void

    :array_0
    .array-data 4
        0x7f0a0383    # @id/text1
        0x7f0a0384    # @id/text2
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 140
    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 141
    :goto_0
    if-eqz p2, :cond_2

    .line 142
    const-string p3, "Ringtone_ArtistListFragment"

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

    .line 143
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_2
    goto :goto_1

    .line 147
    :cond_3
    const-string p1, "Ringtone_ArtistListFragment"

    const-string p2, "onActivityResult: Cancel to choose more ringtones, so do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
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

    .line 159
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string p2, "_id != -1 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string p2, "Ringtone_ArtistListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtistListFragment - where: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p2, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->ARTIST_PROJECTION:[Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "artist_key"

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object p2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .line 109
    const-string p1, "Ringtone_ArtistListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArtistListFragment - Item clicked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    const-string p3, "artist"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 115
    iget-object p3, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 116
    iget-object p3, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 117
    const-string p3, "Ringtone_ArtistListFragment"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ArtistListFragment - selectId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const p4, 0x7f120644    # @string/fih_ringtone_unknown_artist_name 'Unknown artist'

    invoke-virtual {p3, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 120
    const/4 p4, 0x1

    if-eqz p2, :cond_1

    const-string p5, "<unknown>"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    move p5, p4

    :goto_1
    const-string v0, "Ringtone_ArtistListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArtistListFragment - artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/showcustomringtonedetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    if-eqz p5, :cond_2

    .line 128
    const-string p1, "title"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 130
    :cond_2
    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :goto_2
    const-string p1, "tabTitleId"

    const p2, 0x7f120640    # @string/fih_ringtone_tab_artists 'Artists'

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0, p4}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
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

    .line 174
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 175
    iput-object p2, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mCursor:Landroid/database/Cursor;

    .line 178
    invoke-virtual {p0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->setListShown(Z)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->setListShownNoAnimation(Z)V

    .line 183
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 189
    iget-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 190
    return-void
.end method
