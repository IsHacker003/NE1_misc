.class public Lcust/settings/custRingtone/DetailActivity;
.super Landroid/app/ListActivity;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/DetailActivity$ModeCallback;,
        Lcust/settings/custRingtone/DetailActivity$MyClickListner;,
        Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;
    }
.end annotation


# static fields
.field static final DATA_PROJECTION:[Ljava/lang/String;


# instance fields
.field keywords:[Ljava/lang/String;

.field public mActionMode:Landroid/view/ActionMode;

.field mBaseUri:Landroid/net/Uri;

.field mCursor:Landroid/database/Cursor;

.field private mItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mItem_tmp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mModeCallBack:Lcust/settings/custRingtone/DetailActivity$ModeCallback;

.field mMultiSelection:Z

.field mQueryUri:Landroid/net/Uri;

.field private mSelectCount:Landroid/widget/TextView;

.field mSelectId:I

.field mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field mWhereClause:Ljava/lang/String;

.field public myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_data"

    const-string v3, "album"

    const-string v4, "album_id"

    const-string v5, "artist"

    const-string v6, "artist_id"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/custRingtone/DetailActivity;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectId:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mTitle:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    .line 57
    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->keywords:[Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    .line 63
    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    .line 64
    new-instance v1, Lcust/settings/custRingtone/DetailActivity$ModeCallback;

    invoke-direct {v1, p0, v0}, Lcust/settings/custRingtone/DetailActivity$ModeCallback;-><init>(Lcust/settings/custRingtone/DetailActivity;Lcust/settings/custRingtone/DetailActivity$1;)V

    iput-object v1, p0, Lcust/settings/custRingtone/DetailActivity;->mModeCallBack:Lcust/settings/custRingtone/DetailActivity$ModeCallback;

    return-void
.end method

.method static synthetic access$200(Lcust/settings/custRingtone/DetailActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcust/settings/custRingtone/DetailActivity;->customizeActionModeCloseButton()V

    return-void
.end method

.method static synthetic access$300(Lcust/settings/custRingtone/DetailActivity;Landroid/view/ActionMode;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setSubtitle(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$400(Lcust/settings/custRingtone/DetailActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->isSelectAll(Z)V

    return-void
.end method

.method static synthetic access$502(Lcust/settings/custRingtone/DetailActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectCount:Landroid/widget/TextView;

    return-object p1
.end method

.method private cancelSelect()V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->clearbackupstate()V

    .line 292
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->clearstate()V

    .line 293
    return-void
.end method

.method private customizeActionModeCloseButton()V
    .locals 4

    .line 397
    const-string v0, "Ringtone_DetailActivity"

    const-string v1, "customizeActionModeCloseButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_mode_close_button"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 400
    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 401
    new-instance v1, Lcust/settings/custRingtone/DetailActivity$1;

    invoke-direct {v1, p0}, Lcust/settings/custRingtone/DetailActivity$1;-><init>(Lcust/settings/custRingtone/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void
.end method

.method private isSelectAll(Z)V
    .locals 5

    .line 296
    const-string v0, "Ringtone_DetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSelectAll() - check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcust/settings/custRingtone/DetailActivity;->cancelSelect()V

    .line 300
    nop

    .line 302
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 304
    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 306
    :goto_0
    if-ge v1, v0, :cond_1

    .line 307
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 308
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 309
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 311
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 312
    invoke-virtual {p0, v2, v3}, Lcust/settings/custRingtone/DetailActivity;->setSelectedState(J)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 316
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcust/settings/custRingtone/DetailActivity;->removeSelectedState(J)V

    .line 317
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 315
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 320
    :cond_1
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setSubtitle(Landroid/view/ActionMode;)V

    .line 321
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectCount:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getSelectedNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12063e    # @string/fih_ringtone_selected 'Selected'

    invoke-virtual {p0, v1}, Lcust/settings/custRingtone/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_2
    return-void
.end method

.method private setSubtitle(Landroid/view/ActionMode;)V
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getSelectedNumber()I

    move-result p1

    .line 239
    const v0, 0x7f12063e    # @string/fih_ringtone_selected 'Selected'

    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    nop

    .line 247
    :goto_0
    return-void
.end method


# virtual methods
.method public clearbackupstate()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem_tmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 270
    return-void
.end method

.method public clearstate()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 266
    return-void
.end method

.method public getItemList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectSongsData()[J
    .locals 5

    .line 326
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getSelectedNumber()I

    move-result v0

    .line 327
    new-array v0, v0, [J

    .line 328
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    nop

    .line 330
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    .line 337
    :cond_0
    goto :goto_0

    .line 338
    :cond_1
    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 3

    .line 277
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem_tmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    nop

    .line 279
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_0
    goto :goto_0

    .line 287
    :cond_1
    return v1
.end method

.method public isContainItemId(J)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 72
    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectId:I

    .line 73
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mTitle:Ljava/lang/String;

    .line 74
    const-string v0, "tabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    const-string v0, "tabTitleId"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setTitle(I)V

    .line 84
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mBaseUri:Landroid/net/Uri;

    .line 85
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->prepareWhereData(I)V

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mItem_tmp:Ljava/util/Map;

    .line 90
    const p1, 0x7f0d01ef    # @layout/zzz_sound_cust_ringtone_listitem_detail 'res/layout/zzz_sound_cust_ringtone_listitem_detail.xml'

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setContentView(I)V

    .line 91
    const p1, 0x7f0a038e    # @id/title

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mTitleView:Landroid/widget/TextView;

    .line 92
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcust/settings/custRingtone/DetailActivity;->mQueryUri:Landroid/net/Uri;

    sget-object v4, Lcust/settings/custRingtone/DetailActivity;->DATA_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcust/settings/custRingtone/DetailActivity;->mWhereClause:Ljava/lang/String;

    iget-object v6, p0, Lcust/settings/custRingtone/DetailActivity;->keywords:[Ljava/lang/String;

    const-string v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    .line 102
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 104
    new-instance p1, Landroid/widget/SimpleCursorAdapter;

    iget-object v5, p0, Lcust/settings/custRingtone/DetailActivity;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [I

    const v2, 0x1020014    # @android:id/text1

    aput v2, v7, v1

    const v4, 0x1090016    # @android:layout/simple_list_item_activated_1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 113
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v1, 0x7f0a012e    # @id/empty_view

    invoke-virtual {p0, v1}, Lcust/settings/custRingtone/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 116
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 117
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;-><init>(Lcust/settings/custRingtone/DetailActivity;Lcust/settings/custRingtone/DetailActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 195
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 197
    iget-boolean p1, p0, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 199
    const-string p2, "Ringtone_DetailActivity"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onListItemClick(), non-multiselect mode return selectedUri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 p2, -0x1

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcust/settings/custRingtone/DetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->finish()V

    .line 202
    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/DetailActivity;->isContainItemId(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 205
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/DetailActivity;->removeSelectedState(J)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 208
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/DetailActivity;->setSelectedState(J)V

    .line 210
    :goto_0
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity;->setSubtitle(Landroid/view/ActionMode;)V

    .line 212
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->finish()V

    .line 189
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 169
    const-string v0, "Ringtone_DetailActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v0, p0, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "Ringtone_DetailActivity"

    const-string v1, "onPause(): mMultiSelection = true, try finish mActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcust/settings/custRingtone/DetailActivity;->isSelectAll(Z)V

    .line 174
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 178
    :cond_0
    :goto_0
    return-void
.end method

.method prepareWhereData(I)V
    .locals 7

    .line 121
    nop

    .line 122
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 138
    :pswitch_0
    const-string p1, "external"

    iget v0, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectId:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mQueryUri:Landroid/net/Uri;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v0, "is_music=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mWhereClause:Ljava/lang/String;

    .line 142
    goto/16 :goto_2

    .line 144
    :pswitch_1
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mQueryUri:Landroid/net/Uri;

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v0, "title != \'\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, " AND is_music=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mTitle:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcust/settings/custRingtone/DetailActivity;->keywords:[Ljava/lang/String;

    .line 150
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 153
    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcust/settings/custRingtone/DetailActivity;->keywords:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 157
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "_data LIKE ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mWhereClause:Ljava/lang/String;

    goto :goto_2

    .line 124
    :pswitch_2
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mQueryUri:Landroid/net/Uri;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, " AND is_music=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mWhereClause:Ljava/lang/String;

    .line 129
    goto :goto_2

    .line 131
    :pswitch_3
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mQueryUri:Landroid/net/Uri;

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/custRingtone/DetailActivity;->mSelectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, " AND is_music=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity;->mWhereClause:Ljava/lang/String;

    .line 136
    nop

    .line 163
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f12063f
        :pswitch_3    # @string/fih_ringtone_tab_albums 'Albums'
        :pswitch_2    # @string/fih_ringtone_tab_artists 'Artists'
        :pswitch_1    # @string/fih_ringtone_tab_folder 'Folder'
        :pswitch_0    # @string/fih_ringtone_tab_genres 'Genres'
    .end packed-switch
.end method

.method public removeSelectedState(J)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem_tmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public setSelectedState(J)V
    .locals 4

    .line 250
    const-string v0, "Ringtone_DetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   setSelectedState(), listId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcust/settings/custRingtone/DetailActivity;->mItem_tmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method updateDB([J)Landroid/net/Uri;
    .locals 11

    .line 342
    array-length v0, p1

    .line 344
    nop

    .line 345
    sget v1, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 356
    const-string v1, "is_ringtone"

    goto :goto_0

    .line 350
    :pswitch_0
    const-string v1, "is_notification"

    .line 351
    goto :goto_0

    .line 347
    :pswitch_1
    const-string v1, "is_ringtone"

    .line 348
    goto :goto_0

    .line 353
    :cond_0
    const-string v1, "is_alarm"

    .line 354
    nop

    .line 359
    :goto_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 361
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-ge v3, v0, :cond_2

    .line 362
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aget-wide v7, p1, v3

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 365
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    const-string v8, "1"

    invoke-virtual {v7, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2, v6, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    if-nez v3, :cond_1

    .line 369
    nop

    .line 372
    move-object v5, v6

    :cond_1
    goto :goto_2

    .line 370
    :catch_0
    move-exception v7

    .line 371
    const-string v7, "Ringtone_DetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDB(), faile to set flag of data["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, p1, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "; ringUri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 374
    :cond_2
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
