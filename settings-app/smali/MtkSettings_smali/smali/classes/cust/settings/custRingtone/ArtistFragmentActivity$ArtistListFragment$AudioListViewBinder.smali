.class Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;
.super Ljava/lang/Object;
.source "ArtistFragmentActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListViewBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;->this$0:Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;Lcust/settings/custRingtone/ArtistFragmentActivity$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;-><init>(Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;)V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    .line 196
    const-string v0, "Ringtone_ArtistListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewValue() --> columnIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 198
    const-string v1, "number_of_tracks"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 200
    const/4 v2, 0x1

    if-ne p3, v0, :cond_3

    .line 201
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 202
    const-string p3, "Ringtone_ArtistListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewValue() --> artist = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p3, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;->this$0:Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;

    invoke-virtual {p3}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f120644    # @string/fih_ringtone_unknown_artist_name 'Unknown artist'

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 204
    if-eqz p2, :cond_1

    const-string v0, "<unknown>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 207
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 209
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_2
    goto :goto_3

    .line 211
    :cond_3
    if-ne p3, v1, :cond_4

    .line 213
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 214
    const-string p3, "Ringtone_ArtistListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewValue() --> numTrack = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment$AudioListViewBinder;->this$0:Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;

    const v0, 0x7f120634    # @string/fih_music_song_count 'song(s)'

    invoke-virtual {p2, v0}, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 216
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_4
    :goto_3
    return v2
.end method
