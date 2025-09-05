.class Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;
.super Ljava/lang/Object;
.source "FolderFragmentActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderListViewBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->this$0:Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;Lcust/settings/custRingtone/FolderFragmentActivity$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;-><init>(Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;)V

    return-void
.end method

.method private getFolderPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v0, "_data"

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 191
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 193
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 195
    const-string v0, "Ringtone_FolderListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderPath() - folderPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object p1

    .line 198
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSongNum(Landroid/database/Cursor;)I
    .locals 14

    .line 202
    nop

    .line 203
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->getFolderPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 204
    const-string v0, "Ringtone_FolderListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSongNum() - folderPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 206
    array-length v0, p1

    new-array v5, v0, [Ljava/lang/String;

    .line 207
    const-string v6, "_id"

    const-string v7, "is_music"

    const-string v8, "_data"

    const-string v9, "album"

    const-string v10, "title"

    const-string v11, "artist"

    const-string v12, "duration"

    const-string v13, "mime_type"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    .line 215
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 216
    nop

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, " AND is_music=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const/4 v7, 0x0

    move v1, v7

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x25

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v8, p1, v1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    move v1, v7

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 226
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v4, "_data LIKE ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_1
    const-string p1, "Ringtone_FolderListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSongNum() - where :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->this$0:Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 230
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 235
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 237
    :cond_2
    nop

    .line 238
    :goto_2
    const-string p1, "Ringtone_FolderListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongNum() - return :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v7
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    .line 244
    const-string v0, "Ringtone_FolderListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewValue() - FolderList --> columnIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "bucket_display_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 246
    const-string v1, "_data"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 248
    if-ne p3, v0, :cond_0

    .line 249
    const-string p3, "bucket_display_name"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 250
    invoke-direct {p0, p2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->getSongNum(Landroid/database/Cursor;)I

    move-result p2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "     "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->this$0:Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;

    const p3, 0x7f120634    # @string/fih_music_song_count 'song(s)'

    .line 252
    invoke-virtual {p2, p3}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    const-string p3, "Ringtone_FolderListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewValue() - folderName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    .line 256
    invoke-direct {p0, p2}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment$FolderListViewBinder;->getFolderPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    .line 257
    const-string p3, "Ringtone_FolderListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewValue() - folderPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
