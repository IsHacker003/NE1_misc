.class public Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;
.super Landroid/app/ListFragment;
.source "SongFragmentActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/SongFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongListFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;,
        Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;,
        Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;
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
.field static final MEDIA_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mActionMode:Landroid/view/ActionMode;

.field mAdapter:Landroid/widget/SimpleCursorAdapter;

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

.field public mModeCallBack:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;

.field mMultiSelection:Z

.field private mSelectCount:Landroid/widget/TextView;

.field mSelectedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_data"

    const-string v3, "artist"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->MEDIA_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    .line 82
    iput-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 83
    new-instance v1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;

    invoke-direct {v1, p0, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Lcust/settings/custRingtone/SongFragmentActivity$1;)V

    iput-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mModeCallBack:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;

    return-void
.end method

.method static synthetic access$200(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->customizeActionModeCloseButton()V

    return-void
.end method

.method static synthetic access$300(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Landroid/view/ActionMode;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSubtitle(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$400(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->isSelectAll(Z)V

    return-void
.end method

.method static synthetic access$502(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectCount:Landroid/widget/TextView;

    return-object p1
.end method

.method private cancelSelect()V
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->clearbackupstate()V

    .line 311
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->clearstate()V

    .line 312
    return-void
.end method

.method private customizeActionModeCloseButton()V
    .locals 4

    .line 421
    const-string v0, "Ringtone_SongListFragment"

    const-string v1, "customizeActionModeCloseButton() ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_mode_close_button"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 424
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 425
    new-instance v1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;

    invoke-direct {v1, p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$1;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const-string v0, "Ringtone_SongListFragment"

    const-string v1, "customizeActionModeCloseButton() --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method private emptyText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 121
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d    # @color/fih_default_primary_icon_color '#999999'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    return-object v0
.end method

.method private isSelectAll(Z)V
    .locals 5

    .line 315
    const-string v0, "Ringtone_SongListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSelectAll() - check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->cancelSelect()V

    .line 319
    nop

    .line 321
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 326
    :goto_0
    if-ge v1, v0, :cond_1

    .line 327
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 328
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 330
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 331
    invoke-virtual {p0, v2, v3}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSelectedState(J)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 335
    iget-object v2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 336
    iget-object v2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 338
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 339
    invoke-virtual {p0, v2, v3}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->removeSelectedState(J)V

    .line 334
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 342
    :cond_1
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSubtitle(Landroid/view/ActionMode;)V

    .line 346
    return-void
.end method

.method private setSubtitle(Landroid/view/ActionMode;)V
    .locals 3

    .line 254
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectCount:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getSelectedNumber()I

    move-result p1

    .line 261
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12063e    # @string/fih_ringtone_selected 'Selected'

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method


# virtual methods
.method public clearbackupstate()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem_tmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 289
    return-void
.end method

.method public clearstate()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
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

    .line 292
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectSongsData()[J
    .locals 5

    .line 349
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getSelectedNumber()I

    move-result v0

    .line 350
    new-array v0, v0, [J

    .line 351
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 352
    nop

    .line 353
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 358
    add-int/lit8 v2, v2, 0x1

    .line 360
    :cond_0
    goto :goto_0

    .line 361
    :cond_1
    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 4

    .line 296
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem_tmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    nop

    .line 298
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 304
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    const-string v0, "Ringtone_SongListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedNumber(), return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v1
.end method

.method public isContainItemId(J)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .line 88
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setHasOptionsMenu(Z)V

    .line 100
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, p1, [I

    const/4 v8, 0x0

    const v0, 0x1020014    # @android:id/text1

    aput v0, v5, v8

    const v2, 0x1090016    # @android:layout/simple_list_item_activated_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v7, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 105
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p0, v8}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setListShown(Z)V

    .line 109
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 110
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MultiSelectOnLongClickListener;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Lcust/settings/custRingtone/SongFragmentActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120639    # @string/fih_ringtone_listview_empty 'No music files'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->emptyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v8, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 232
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    .line 233
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem_tmp:Ljava/util/Map;

    .line 234
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

    .line 194
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 198
    const-string v4, "is_music=1"

    .line 199
    new-instance p1, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->MEDIA_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "title_key"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 143
    iget-boolean p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    if-nez p1, :cond_0

    .line 144
    const-string p1, "Ringtone_SongListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SongFragmentList - Item clicked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 146
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 147
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    iget-object p3, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    const-string p4, "_id"

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 148
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;

    .line 149
    const-string p1, "Ringtone_SongListFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SongFragmentList - Item clicked: mSelectedUri= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, -0x1

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    iget-object p4, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 152
    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->isContainItemId(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->removeSelectedState(J)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 158
    invoke-virtual {p0, p4, p5}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSelectedState(J)V

    .line 160
    :goto_0
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setSubtitle(Landroid/view/ActionMode;)V

    .line 162
    :goto_1
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 207
    const-string p1, "Ringtone_SongListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFinished(), isResumed() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 209
    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mCursor:Landroid/database/Cursor;

    .line 212
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setListShown(Z)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0, p2}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->setListShownNoAnimation(Z)V

    .line 217
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 223
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 224
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 239
    const-string v0, "Ringtone_SongListFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "Ringtone_SongListFragment"

    const-string v1, "onPause(): mMultiSelection = true, try finish mActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 247
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 248
    return-void
.end method

.method public removeSelectedState(J)V
    .locals 3

    .line 274
    const-string v0, "Ringtone_SongListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   removeSelectedState(), listId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem_tmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public setSelectedState(J)V
    .locals 4

    .line 268
    const-string v0, "Ringtone_SongListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   setSelectedState(), listId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mItem_tmp:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method updateDB([J)V
    .locals 9

    .line 365
    array-length v0, p1

    .line 367
    sget v1, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 378
    const-string v1, "is_ringtone"

    goto :goto_0

    .line 372
    :pswitch_0
    const-string v1, "is_notification"

    .line 373
    goto :goto_0

    .line 369
    :pswitch_1
    const-string v1, "is_ringtone"

    .line 370
    goto :goto_0

    .line 375
    :cond_0
    const-string v1, "is_alarm"

    .line 376
    nop

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 383
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 384
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aget-wide v5, p1, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 387
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 388
    const-string v6, "1"

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    if-nez v3, :cond_1

    .line 391
    iput-object v4, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mSelectedUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    goto :goto_2

    .line 392
    :catch_0
    move-exception v5

    .line 393
    const-string v5, "Ringtone_SongListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDB(), faile to set flag of data["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, p1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; ringUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 396
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
